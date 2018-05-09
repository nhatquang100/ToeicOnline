package controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import constant.Defines;
import dao.GrammarDao;
import dao.CategoryGrammarDao;
import entity.CategoryVocabulary;
import entity.categorygrammar;
import entity.grammar;
import entity.grammar;
import entity.member;
import entity.question;
import util.StringUtil;

@Controller
@RequestMapping(value = { "/admin/grammar" })
public class AdminGrammarController {
	@Autowired
	private GrammarDao grammarDao;
	
	@Autowired
	private CategoryGrammarDao categoryGrammarDao;
	
	@Autowired
	private StringUtil stringUtil;
	
	private List<grammar> listVocabulary = new ArrayList<grammar>();
	
	@RequestMapping(value={"{page}",""},method = RequestMethod.GET)
	public String goToPage(ModelMap modelMap,@PathVariable(value="page", required = false) Integer page,HttpSession session ) {
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			if(page == null) {
				page = 1;
			}
			int sumPage = (int) Math.ceil((float)grammarDao.countItem()/Defines.ROW_COUNT);
			int offset= (page - 1) * Defines.ROW_COUNT;
			ArrayList<grammar> list = (ArrayList<grammar>) grammarDao.getItems();
			modelMap.addAttribute("grammar", list);
			modelMap.addAttribute("sumPage", sumPage);
			modelMap.addAttribute("page", page);
			return "admin.grammar.index";
		}
		return "redirect:/admin";
	}
	@RequestMapping("add")
	public String add(ModelMap modelMap){
		List<categorygrammar> listCate = categoryGrammarDao.getAll();
		modelMap.addAttribute("listCateogry", listCate);
		return "admin.grammar.add";
	}
	@RequestMapping(value="add",method=RequestMethod.POST)
	public String add(@RequestBody grammar grammar,ModelMap modelMap, RedirectAttributes ra,HttpServletRequest request,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			ArrayList<grammar> list = (ArrayList<grammar>) grammarDao.getItems();
			List<categorygrammar> listCate = categoryGrammarDao.getAll();
			modelMap.addAttribute("listCateogry", listCate);
			if(grammarDao.addItem(grammar)>0){
				ra.addFlashAttribute("msg","Thêm thành công!!");
			}else{
				modelMap.addAttribute("msg","Thêm thất bại!!");
				return "admin.grammar.add";
			}
			return "redirect:/admin/grammar";
		}
		return "redirect:/admin";
		
	}
/*	@RequestMapping(value = "/addnew", method = RequestMethod.GET)
	public @ResponseBody String addNew(HttpServletRequest request) {
		String vocabularyid = "";
		String vocabularyname = request.getParameter("vocabularyname");
		String spelling = request.getParameter("spelling");
		String vocabularymean = request.getParameter("vocabularymean");
		String categoryvocabularyid = request.getParameter("categoryvocabularyid");
	
		Vocabulary vocabulary = new Vocabulary(vocabularyid, vocabularyname, spelling, vocabularymean, categoryvocabularyid);
		vocaburalysDao.addItem(vocabulary);
		

		ObjectM mapper = new ObjectMapper();
		String ajaxResponse = "";
		try {
			ajaxResponse = mapper.writeValueAsString(vocabulary);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}

		return ajaxResponse;
	}*/
	@RequestMapping("edit/{grammarid}")
	public String readedit(@PathVariable("grammarid") String grammarid, ModelMap modelMap,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			modelMap.addAttribute("grammar", grammarDao.getItemById(grammarid));
			return "admin.grammar.edit";
		}
		return "redirect:/admin";
	}
	@RequestMapping(value="edit/{grammarid}",method=RequestMethod.POST)
	public  String readedit(@PathVariable("grammarid") String grammarid,ModelMap modelMap,@ModelAttribute("objgrammar") grammar grammar,RedirectAttributes ra, BindingResult rs,HttpServletRequest request,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			grammar.setGrammarid(grammarid);
			if(grammarDao.editItem(grammar)>0){
					ra.addFlashAttribute("msg","Sửa thành công!!");
				}else{
					ra.addFlashAttribute("msg","Sửa thất bại!!");
				}
			return "redirect:/admin/grammar";
		}
		return "redirect:/admin";
	}
	@RequestMapping("del/{grammarid}")
	public String del(@PathVariable("grammarid") String grammarid,RedirectAttributes ra,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			if(grammarDao.delItem(grammarid)>0){
				ra.addFlashAttribute("msg","Xóa thành công!!");
			}else{
				ra.addFlashAttribute("msg","Xóa thất bại!!");
			}
			return "redirect:/admin/grammar";
		}
		return "redirect:/admin";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String search(@ModelAttribute("grammarname") String grammarname ,RedirectAttributes ra,ModelMap modelMap, BindingResult rs,HttpServletRequest request){
		
		if(grammarname.isEmpty()) {
			return "redirect:/admin/grammar";
		}else {
			List<grammar> list = grammarDao.getItemByName(grammarname);
			modelMap.addAttribute("grammar", list);
			return "admin.grammar.search";
		}
		//return null;
	}
}
