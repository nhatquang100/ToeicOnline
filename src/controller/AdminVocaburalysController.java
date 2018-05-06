package controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
import dao.VocaburalyDao;
import dao.VocaburalysDao;
import entity.CategoryVocaburaly;
import entity.Vocabulary;
import entity.member;
import entity.question;
import util.StringUtil;

@Controller
@RequestMapping(value = { "/admin/vocaburaly" })
public class AdminVocaburalysController {
	@Autowired
	private VocaburalysDao vocaburalysDao;
	
	@Autowired
	private VocaburalyDao categoryVocaburalyDao;
	
	@Autowired
	private StringUtil stringUtil;
	
	private List<Vocabulary> listVocabulary = new ArrayList<Vocabulary>();
	
	@RequestMapping(value={"{page}",""},method = RequestMethod.GET)
	public String goToPage(ModelMap modelMap,@PathVariable(value="page", required = false) Integer page ) {
		if(page == null) {
			page = 1;
		}
		int sumPage = (int) Math.ceil((float)vocaburalysDao.countItem()/Defines.ROW_COUNT);
		int offset= (page - 1) * Defines.ROW_COUNT;
		ArrayList<Vocabulary> list = (ArrayList<Vocabulary>) vocaburalysDao.getItems();
		modelMap.addAttribute("vocabulary", list);
		modelMap.addAttribute("sumPage", sumPage);
		modelMap.addAttribute("page", page);
		return "admin.vocabularys.index";
		
	}
	@RequestMapping("add")
	public String add(ModelMap modelMap){
		List<CategoryVocaburaly> listCate = categoryVocaburalyDao.getAll();
		modelMap.addAttribute("listCateogry", listCate);
		return "admin.vocabularys.add";
	}
	@RequestMapping(value="add",method=RequestMethod.POST)
	public String add(@RequestBody Vocabulary vocabulary,ModelMap modelMap, RedirectAttributes ra,HttpServletRequest request){
		ArrayList<Vocabulary> list = (ArrayList<Vocabulary>) vocaburalysDao.getItems();
		List<CategoryVocaburaly> listCate = categoryVocaburalyDao.getAll();
		modelMap.addAttribute("listCateogry", listCate);
		vocaburalysDao.addItem(vocabulary);
		/*if(){
			ra.addFlashAttribute("msg","ThÃªm thaÌ€nh cÃ´ng!!");
		}else{
			modelMap.addAttribute("msg","ThÃªm thÃ¢Ì�t baÌ£i!!");
			return "admin.vocabularys.add";
		}*/
		return "redirect:/admin/vocaburaly";
		
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
	@RequestMapping("edit/{vocabularyid}")
	public String readedit(@PathVariable("vocabularyid") String vocabularyid, ModelMap modelMap){
		modelMap.addAttribute("vocal", vocaburalysDao.getItemById(vocabularyid));
		return "admin.vocabularys.edit";
	}
	@RequestMapping(value="edit/{vocabularyid}",method=RequestMethod.POST)
	public  String readedit(@PathVariable("vocabularyid") String vocabularyid,ModelMap modelMap,@ModelAttribute("objvocal") Vocabulary vocabulary,RedirectAttributes ra, BindingResult rs,HttpServletRequest request){
		vocabulary.setVocabularyid(vocabularyid);
		if(vocaburalysDao.editItem(vocabulary)>0){
				ra.addFlashAttribute("msg","sÆ°Ì‰a thaÌ€nh cÃ´ng!!");
			}else{
				ra.addFlashAttribute("msg","sÆ°Ì‰a thÃ¢Ì�t baÌ£i!!");
			}
		return "redirect:/admin/vocaburaly";
	}
	@RequestMapping("del/{vocabularyid}")
	public String del(@PathVariable("vocabularyid") String vocabularyid,RedirectAttributes ra){
		if(vocaburalysDao.delItem(vocabularyid)>0){
			ra.addFlashAttribute("msg","xoÌ�a thaÌ€nh cÃ´ng!!");
		}else{
			ra.addFlashAttribute("msg","xoÌ�a thÃ¢Ì�t baÌ£i!!");
		}
		return "redirect:/admin/vocaburaly";
	}
	
}
