package controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import constant.Defines;
import dao.QuestionDao;
import entity.member;
import entity.question;

@Controller
@RequestMapping("admin/question")
public class AdminQuestionController {
	@Autowired
	private QuestionDao questionDao;
	
	@RequestMapping(value={"{page}",""})
	public String index(ModelMap modelMap, @PathVariable(value="page", required = false) Integer page,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			if(page == null) {
				page = 1;
			}
			int sumPage = (int) Math.ceil((float)questionDao.countItem()/Defines.ROW_COUNT);
			int offset= (page - 1) * Defines.ROW_COUNT;
			modelMap.addAttribute("sumPage", sumPage);
			modelMap.addAttribute("page", page);
			modelMap.addAttribute("listquestion", questionDao.getItems(offset));
			return "admin.question.index";
		}
		return "redirect:/admin";
	}
	
	@RequestMapping("listenadd")
	public String listenadd(HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			return "admin.question.listenadd";
		}
		return "redirect:/admin";
	}
	
	@RequestMapping(value="listenadd",method=RequestMethod.POST)
	public String listenadd(ModelMap modelMap,@RequestParam(value="multiaudio") CommonsMultipartFile multiaudio,@RequestParam(value="multiimage") CommonsMultipartFile multiimage,@ModelAttribute("objquestion") question question,RedirectAttributes ra, BindingResult rs,HttpServletRequest request,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			question.setIsactive(1);
			question.setCategoryquestionid(1);
			String nameFileaudio = multiaudio.getOriginalFilename();
			String nameFileimage = multiimage.getOriginalFilename();
			question.setAudio(nameFileaudio);
			question.setImage(nameFileimage);
			System.out.println(question.getAudio());
			System.out.println(question.getImage());
			if(!"".equals(nameFileaudio) ){
				String dirFile = request.getServletContext().getRealPath("upload");
				System.out.println(dirFile);
				File fileDir = new File(dirFile);
				if(!fileDir.exists()){
					fileDir.mkdir();
				}
				try {
					multiaudio.transferTo(new File(fileDir+File.separator+nameFileaudio));
					System.out.println("Upload file thành công!");
					modelMap.addAttribute("filename", nameFileaudio);
				} catch (Exception e) {
					System.out.println(e.getMessage());
					System.out.println("Upload file thất bại!");
				}
			}
			if(!"".equals(nameFileimage) ){
				String dirFile = request.getServletContext().getRealPath("upload");
				System.out.println(dirFile);
				File fileDir = new File(dirFile);
				if(!fileDir.exists()){
					fileDir.mkdir();
				}
				try {
					multiimage.transferTo(new File(fileDir+File.separator+nameFileimage));
					System.out.println("Upload file thành công!");
					modelMap.addAttribute("filename", nameFileimage);
				} catch (Exception e) {
					System.out.println(e.getMessage());
					System.out.println("Upload file thất bại!");
				}
			}
			if(questionDao.addItem(question)>0){
					ra.addFlashAttribute("msg","Thêm thành công!!");
				}else{
					modelMap.addAttribute("msg","Thêm thất bại!!");
					return "admin.question.listenadd";
				}
			return "redirect:/admin/question";
		}
		return "redirect:/admin";
	}
	
	@RequestMapping("readadd")
	public String readadd(HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			return "admin.question.readadd";
		}
		return "redirect:/admin";
	}
	
	@RequestMapping(value="readadd",method=RequestMethod.POST)
	public String readadd(ModelMap modelMap,@ModelAttribute("objquestion") question question,RedirectAttributes ra, BindingResult rs,HttpServletRequest request,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			question.setIsactive(1);
			question.setCategoryquestionid(2);
			if(questionDao.addItem(question)>0){
					ra.addFlashAttribute("msg","Thêm thành công!!");
			}else{
				modelMap.addAttribute("msg","Thêm thất bại!!");
				return "admin.question.readadd";
			}
			return "redirect:/admin/question";
		}
		return "redirect:/admin";
	}
	
	@RequestMapping("listenedit/{id}")
	public String listenedit(@PathVariable("id") int id, ModelMap modelMap,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			modelMap.addAttribute("objquestion", questionDao.getItem(id));
			return "admin.question.listenedit";
		}
		return "redirect:/admin";
	}
	
	@RequestMapping(value="listenedit/{id}",method=RequestMethod.POST)
	public String listenedit(@PathVariable("id") int id,ModelMap modelMap,@RequestParam(value="multiaudio") CommonsMultipartFile multiaudio,@RequestParam(value="multiimage") CommonsMultipartFile multiimage,@ModelAttribute("objquestion") question question,RedirectAttributes ra, BindingResult rs,HttpServletRequest request,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			System.out.println(id + "11111111111111111111111111111111");
			question.setQuestionid(id);
			String nameFileaudio = multiaudio.getOriginalFilename();
			String nameFileimage = multiimage.getOriginalFilename();
			question.setAudio(nameFileaudio);
			question.setImage(nameFileimage);
			System.out.println(question.getAudio());
			System.out.println(question.getImage());
			if(!"".equals(nameFileaudio) ){
				String dirFile = request.getServletContext().getRealPath("upload");
				System.out.println(dirFile);
				File fileDir = new File(dirFile);
				if(!fileDir.exists()){
					fileDir.mkdir();
				}
				try {
					multiaudio.transferTo(new File(fileDir+File.separator+nameFileaudio));
					System.out.println("Upload file thành công!");
					modelMap.addAttribute("filename", nameFileaudio);
				} catch (Exception e) {
					System.out.println(e.getMessage());
					System.out.println("Upload file thất bại!");
				}
			}
			if(!"".equals(nameFileimage) ){
				String dirFile = request.getServletContext().getRealPath("upload");
				System.out.println(dirFile);
				File fileDir = new File(dirFile);
				if(!fileDir.exists()){
					fileDir.mkdir();
				}
				try {
					multiimage.transferTo(new File(fileDir+File.separator+nameFileimage));
					System.out.println("Upload file thành công!");
					modelMap.addAttribute("filename", nameFileimage);
				} catch (Exception e) {
					System.out.println(e.getMessage());
					System.out.println("Upload file thất bại!");
				}
			}
			if(questionDao.editItem(question)>0){
					ra.addFlashAttribute("msg","sửa thành công!!");
				}else{
					ra.addFlashAttribute("msg","sửa thất bại!!");
				}
			return "redirect:/admin/question";
		}
		return "redirect:/admin";
	}
	
	@RequestMapping("readedit/{id}")
	public String readedit(@PathVariable("id") int id, ModelMap modelMap,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			modelMap.addAttribute("objquestion", questionDao.getItem(id));
			return "admin.question.readedit";
		}
		return "redirect:/admin";
	}
	
	@RequestMapping(value="readedit/{id}",method=RequestMethod.POST)
	public String readedit(@PathVariable("id") int id,ModelMap modelMap,@ModelAttribute("objquestion") question question,RedirectAttributes ra, BindingResult rs,HttpServletRequest request,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			System.out.println(id + "11111111111111111111111111111111");
			question.setQuestionid(id);
			if(questionDao.editItem(question)>0){
					ra.addFlashAttribute("msg","sửa thành công!!");
				}else{
					ra.addFlashAttribute("msg","sửa thất bại!!");
				}
			return "redirect:/admin/question";
		}
		return "redirect:/admin";
	}
	
	@RequestMapping("del/{id}")
	public String del(@PathVariable("id") int id,RedirectAttributes ra,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			if(questionDao.delItem(id)>0){
				ra.addFlashAttribute("msg","xóa thành công!!");
			}else{
				ra.addFlashAttribute("msg","xóa thất bại!!");
			}
			return "redirect:/admin/question";
		}
		return "redirect:/admin";
	}
}
