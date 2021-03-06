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
	public String goToPage(ModelMap modelMap,@PathVariable(value="page", required = false) Integer page,HttpSession session ) {
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
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
		return "redirect:/admin";
		
	}
	@RequestMapping("add")
	public String add(HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			return "admin.categoryVacaburaly.add";
		}
		return "redirect:/admin";
	}
	@RequestMapping(value="add",method=RequestMethod.POST)
	public String add(@ModelAttribute("catvocal") CategoryVocabulary categoryVocaburaly,@RequestParam(value="multiimage") CommonsMultipartFile multifile,Model model, RedirectAttributes ra,HttpServletRequest request,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
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
					System.out.println("Upload file thành công!");
					model.addAttribute("filename", nameFile);
				} catch (Exception e) {
					System.out.println(e.getMessage());
					System.out.println("Upload file thất bại!");
				}
			}
			if(vocaburalyDao.addVoca(categoryVocaburaly)>0){
				ra.addFlashAttribute("msg","Thêm thành công!!");
				return "redirect:/admin/categoryVoca";
			}
			model.addAttribute("msg","có lỗi trong quá trình thêm!!!");
			return "admin.categoryVacaburaly.add";
		}
		return "redirect:/admin";
	}
	@RequestMapping("edit/{id}")
	public String edit(@PathVariable("id") String id, ModelMap modelMap,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			modelMap.addAttribute("catvocal", vocaburalyDao.getItem(id));
			return "admin.categoryVacaburaly.edit";
		}
		return "redirect:/admin";
	}
	@RequestMapping(value="edit/{id}",method=RequestMethod.POST)
	public String edit(@ModelAttribute("catvocal") CategoryVocabulary categoryVocaburaly,@RequestParam(value="multiimage") CommonsMultipartFile multifile,@PathVariable("id") String id,RedirectAttributes ra,Model model, BindingResult rs,HttpServletRequest request,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			if(rs.hasErrors()) {
		        return "admin.categoryVacaburaly.edit";
		    }

			String nameFile = multifile.getOriginalFilename();
			categoryVocaburaly.setCategoryVocabularyImage(nameFile);
			categoryVocaburaly.setCategoryvocabularyid(id);
			if(!"".equals(nameFile) ){
				String dirFile = request.getServletContext().getRealPath("upload");
				System.out.println(dirFile);
				File fileDir = new File(dirFile);
				if(!fileDir.exists()){
					fileDir.mkdir();
				}
				try {
					multifile.transferTo(new File(fileDir+File.separator+nameFile));
					System.out.println("Upload file thành công!");
					model.addAttribute("filename", nameFile);
				} catch (Exception e) {
					System.out.println(e.getMessage());
					System.out.println("Upload file thất bại!");
				}
			}
			if(vocaburalyDao.editItem(categoryVocaburaly)>0){
					ra.addFlashAttribute("msg","sửa thành công!!");
				}else{
					ra.addFlashAttribute("msg","sửa thất bại!!");
				}
			return "redirect:/admin/categoryVoca";
		}
		return "redirect:/admin";
	}
	@RequestMapping("del/{id}")
	public String del(@PathVariable("id") String id,RedirectAttributes ra,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			if(vocaburalyDao.delItem(id)>0){
				ra.addFlashAttribute("msg","xóa thành công!!");
			}else{
				ra.addFlashAttribute("msg","Xóa thất bại!!");
			}
			return "redirect:/admin/categoryVoca";
		}
		return "redirect:/admin";
	}
	@RequestMapping(value = "/imageDisplay", method = RequestMethod.GET)
	  public void showImage(@RequestParam("id") String id, HttpServletResponse response,HttpServletRequest request) throws IOException  {


	    CategoryVocabulary categoryVocaburaly = vocaburalyDao.getItem(id);        
	    response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
	    int foo = Integer.parseInt(categoryVocaburaly.getCategoryVocabularyImage());
	    response.getOutputStream().write(foo);


	    response.getOutputStream().close();
	 }
	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String search(@ModelAttribute("categoryvocabularyname") String categoryvocabularyname ,RedirectAttributes ra,ModelMap modelMap, BindingResult rs,HttpServletRequest request){
		
		if(categoryvocabularyname.isEmpty()) {
			return "redirect:/admin/categoryVoca";
		}else {
			List<CategoryVocabulary> list = vocaburalyDao.getItemByName(categoryvocabularyname);
			modelMap.addAttribute("catVocaburaly", list);
			return "admin.categoryVacaburaly.search";
		}
		//return null;
	}
}
