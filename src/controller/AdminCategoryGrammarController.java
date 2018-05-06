package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import constant.Defines;
import dao.CategoryGrammarDao;
import dao.VocaburalyDao;
import entity.categorygrammar;
import entity.member;
import util.StringUtil;

@Controller
@RequestMapping(value = { "/admin/categoryGram" })
public class AdminCategoryGrammarController {
	@Autowired
	private CategoryGrammarDao categoryGrammarDao;
	
	@Autowired
	private StringUtil stringUtil;
	
	@RequestMapping(value={"{page}",""},method = RequestMethod.GET)
	public String goToPage(ModelMap modelMap,@PathVariable(value="page", required = false) Integer page ) {
		if(page == null) {
			page = 1;
		}
		int sumPage = (int) Math.ceil((float)categoryGrammarDao.countItem()/Defines.ROW_COUNT);
		int offset= (page - 1) * Defines.ROW_COUNT;
		List<categorygrammar> list = categoryGrammarDao.getAlls(offset) ;
		modelMap.addAttribute("catGrammar", list);
		modelMap.addAttribute("sumPage", sumPage);
		modelMap.addAttribute("page", page);
		return "admin.categoryGrammar.index";
		
	}
	@RequestMapping("add")
	public String add(){
		return "admin.categoryGrammar.add";
	}
	@RequestMapping(value="add",method=RequestMethod.POST)
	public String add(@ModelAttribute("catgram") categorygrammar categorygrammar, Model model, RedirectAttributes ra,HttpServletRequest request){

		if(categoryGrammarDao.addVoca(categorygrammar)>0){
			ra.addFlashAttribute("msg","ThÃªm thaÌ€nh cÃ´ng!!");
			return "redirect:/admin/categoryGram";
		}
		model.addAttribute("msg","coÌ� lÃ´Ìƒi trong quaÌ� triÌ€nh thÃªm!!!");
		return "admin.categoryGrammar.add";
	}
	@RequestMapping("edit/{categorygrammarid}")
	public String edit(@PathVariable("categorygrammarid") String categorygrammarid, ModelMap modelMap){
		modelMap.addAttribute("catgram", categoryGrammarDao.getItem(categorygrammarid));
		return "admin.categoryGrammar.edit";
	}
	@RequestMapping(value="edit/{categorygrammarid}",method=RequestMethod.POST)
	public String edit(@ModelAttribute("catgram") categorygrammar categorygrammar,@PathVariable("categorygrammarid") String categorygrammarid,RedirectAttributes ra,Model model, BindingResult rs,HttpServletRequest request){
		if(rs.hasErrors()) {
	        return "admin.categoryGrammar.edit";
	    }

		
		categorygrammar.setCategorygrammarid(categorygrammarid);
		
		if(categoryGrammarDao.editItem(categorygrammar)>0){
				ra.addFlashAttribute("msg","sÆ°Ì‰a thaÌ€nh cÃ´ng!!");
			}else{
				ra.addFlashAttribute("msg","sÆ°Ì‰a thÃ¢Ì�t baÌ£i!!");
			}
		return "redirect:/admin/categoryGram";
	}
	@RequestMapping("del/{categorygrammarid}")
	public String del(@PathVariable("categorygrammarid") String categorygrammarid,RedirectAttributes ra){
		if(categoryGrammarDao.delItem(categorygrammarid)>0){
			ra.addFlashAttribute("msg","xoÌ�a thaÌ€nh cÃ´ng!!");
		}else{
			ra.addFlashAttribute("msg","xoÌ�a thÃ¢Ì�t baÌ£i!!");
		}
		return "redirect:/admin/categoryGram";
	}
		
}
