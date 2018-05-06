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
import dao.VocaburalyDao;
import entity.CategoryVocabulary;
import entity.member;
import util.StringUtil;

@Controller
@RequestMapping(value = { "/admin/categoryVoca" })
public class AdminVocaburalyController {
	@Autowired
	private VocaburalyDao vocaburalyDao;
	
	@Autowired
	private StringUtil stringUtil;
	
	@RequestMapping(value={"{page}",""},method = RequestMethod.GET)
	public String goToPage(ModelMap modelMap,@PathVariable(value="page", required = false) Integer page ) {
		if(page == null) {
			page = 1;
		}
		int sumPage = (int) Math.ceil((float)vocaburalyDao.countItem()/Defines.ROW_COUNT);
		int offset= (page - 1) * Defines.ROW_COUNT;
		ModelAndView mav = new ModelAndView();
		List<CategoryVocabulary> list = vocaburalyDao.getAlls(offset) ;
		modelMap.addAttribute("catVocaburaly", list);
		modelMap.addAttribute("sumPage", sumPage);
		modelMap.addAttribute("page", page);
		return "admin.categoryVacaburaly.index";
		
	}
	@RequestMapping("add")
	public String add(){
		return "admin.categoryVacaburaly.add";
	}
	@RequestMapping(value="add",method=RequestMethod.POST)
	public String add(@ModelAttribute("catvocal") CategoryVocabulary categoryVocaburaly,@RequestParam(value="multiimage") CommonsMultipartFile multifile,Model model, RedirectAttributes ra,HttpServletRequest request){

		String nameFile = multifile.getOriginalFilename();
		categoryVocaburaly.setCategoryVocabularyImage(nameFile);
		
		if(!"".equals(nameFile) ){
			String dirFile = request.getServletContext().getRealPath("upload");
			System.out.println(dirFile);
			File fileDir = new File(dirFile);
			if(!fileDir.exists()){
				fileDir.mkdir();
			}
			try {
				multifile.transferTo(new File(fileDir+File.separator+nameFile));
				System.out.println("Upload file thÃ nh cÃ´ng!");
				model.addAttribute("filename", nameFile);
			} catch (Exception e) {
				System.out.println(e.getMessage());
				System.out.println("Upload file tháº¥t báº¡i!");
			}
		}
		if(vocaburalyDao.addVoca(categoryVocaburaly)>0){
			ra.addFlashAttribute("msg","ThÃªm thaÌ€nh cÃ´ng!!");
			return "redirect:/admin/categoryVoca";
		}
		model.addAttribute("msg","coÌ� lÃ´Ìƒi trong quaÌ� triÌ€nh thÃªm!!!");
		return "admin.categoryVacaburaly.add";
	}
	@RequestMapping("edit/{id}")
	public String edit(@PathVariable("id") String id, ModelMap modelMap){
		modelMap.addAttribute("catvocal", vocaburalyDao.getItem(id));
		return "admin.categoryVacaburaly.edit";
	}
	@RequestMapping(value="edit/{id}",method=RequestMethod.POST)
	public String edit(@ModelAttribute("catvocal") CategoryVocabulary categoryVocaburaly,@RequestParam(value="multiimage") CommonsMultipartFile multifile,@PathVariable("id") String id,RedirectAttributes ra,Model model, BindingResult rs,HttpServletRequest request){
		if(rs.hasErrors()) {
	        return "admin.categoryVacaburaly.edit";
	    }

		String nameFile = multifile.getOriginalFilename();
		categoryVocaburaly.setCategoryVocabularyImage(nameFile);
		categoryVocaburaly.setId(id);
		if(!"".equals(nameFile) ){
			String dirFile = request.getServletContext().getRealPath("upload");
			System.out.println(dirFile);
			File fileDir = new File(dirFile);
			if(!fileDir.exists()){
				fileDir.mkdir();
			}
			try {
				multifile.transferTo(new File(fileDir+File.separator+nameFile));
				System.out.println("Upload file thÃ nh cÃ´ng!");
				model.addAttribute("filename", nameFile);
			} catch (Exception e) {
				System.out.println(e.getMessage());
				System.out.println("Upload file tháº¥t báº¡i!");
			}
		}
		if(vocaburalyDao.editItem(categoryVocaburaly)>0){
				ra.addFlashAttribute("msg","sÆ°Ì‰a thaÌ€nh cÃ´ng!!");
			}else{
				ra.addFlashAttribute("msg","sÆ°Ì‰a thÃ¢Ì�t baÌ£i!!");
			}
		return "redirect:/admin/categoryVoca";
	}
	@RequestMapping("del/{id}")
	public String del(@PathVariable("id") String id,RedirectAttributes ra){
		if(vocaburalyDao.delItem(id)>0){
			ra.addFlashAttribute("msg","xoÌ�a thaÌ€nh cÃ´ng!!");
		}else{
			ra.addFlashAttribute("msg","xoÌ�a thÃ¢Ì�t baÌ£i!!");
		}
		return "redirect:/admin/categoryVoca";
	}
	@RequestMapping(value = "/imageDisplay", method = RequestMethod.GET)
	  public void showImage(@RequestParam("id") String id, HttpServletResponse response,HttpServletRequest request) throws IOException  {


	    CategoryVocabulary categoryVocaburaly = vocaburalyDao.getItem(id);        
	    response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
	    int foo = Integer.parseInt(categoryVocaburaly.getCategoryVocabularyImage());
	    response.getOutputStream().write(foo);


	    response.getOutputStream().close();
	    }
	
}
