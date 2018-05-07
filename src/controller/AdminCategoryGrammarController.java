package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	public String add(HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			return "admin.categoryGrammar.add";
		}else{
			return "public.index.home";
		}
		
	}
	@RequestMapping(value="add",method=RequestMethod.POST)
	public String add(@ModelAttribute("catgram") categorygrammar categorygrammar, Model model, RedirectAttributes ra,HttpServletRequest request,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			if(categoryGrammarDao.addVoca(categorygrammar)>0){
				ra.addFlashAttribute("msg","thêm thành công!!");
				return "redirect:/admin/categoryGram";
			}
			model.addAttribute("msg","có lỗi trong quá trình thêm!!!");
			return "admin.categoryGrammar.add";
		}
		return "redirect:/";
	}
	@RequestMapping("edit/{categorygrammarid}")
	public String edit(@PathVariable("categorygrammarid") String categorygrammarid, ModelMap modelMap,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			modelMap.addAttribute("catgram", categoryGrammarDao.getItem(categorygrammarid));
			return "admin.categoryGrammar.edit";
		}
		return "redirect:/";
	}
	@RequestMapping(value="edit/{categorygrammarid}",method=RequestMethod.POST)
	public String edit(@ModelAttribute("catgram") categorygrammar categorygrammar,@PathVariable("categorygrammarid") String categorygrammarid,RedirectAttributes ra,Model model, BindingResult rs,HttpServletRequest request,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			if(rs.hasErrors()) {
		        return "admin.categoryGrammar.edit";
		    }

			
			categorygrammar.setCategorygrammarid(categorygrammarid);
			
			if(categoryGrammarDao.editItem(categorygrammar)>0){
					ra.addFlashAttribute("msg","Sửa thành công!!");
				}else{
					ra.addFlashAttribute("msg","Sửa thất bại!!");
				}
			return "redirect:/admin/categoryGram";
		}
		return "redirect:/";
	}
	@RequestMapping("del/{categorygrammarid}")
	public String del(@PathVariable("categorygrammarid") String categorygrammarid,RedirectAttributes ra,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			if(categoryGrammarDao.delItem(categorygrammarid)>0){
				ra.addFlashAttribute("msg","Xóa thành công!!");
			}else{
				ra.addFlashAttribute("msg","Xóa thất bại!!");
			}
			return "redirect:/admin/categoryGram";
		}
		return "redirect:/";
	}
		
}
