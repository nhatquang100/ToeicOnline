package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.ExaminationDao;
import entity.member;

@Controller
public class Test_Examination_Controller {
	@Autowired
	private ExaminationDao examinationDao;
	
	@RequestMapping("exam_reading/{idexamination}")
	public String readingexam(ModelMap modelMap,@PathVariable("idexamination") int idexamination,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			modelMap.addAttribute("examreading",examinationDao.getItembyID(idexamination));
			return "public.exam.reading";
		}
		return "redirect:/";
	}
	
	@RequestMapping("all_exam_reading")
	public String allreadingexam(ModelMap modelMap,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			modelMap.addAttribute("allexamreading",examinationDao.getAllItemsbycategory(2));
			return "public.allexam.reading";
		}
		return "redirect:/";
	}
	
	@RequestMapping("exam_listening/{idexamination}")
	public String listeninngexam(ModelMap modelMap,@PathVariable("idexamination") int idexamination,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			modelMap.addAttribute("examlistening",examinationDao.getItembyID(idexamination));
			return "public.exam.listening";
		}
		return "redirect:/";
	}
	
	@RequestMapping("all_exam_listening")
	public String alllisteninngexam(ModelMap modelMap,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			modelMap.addAttribute("allexamlistening",examinationDao.getAllItemsbycategory(1));
			return "public.allexam.listening";
		}
		return "redirect:/";
	}
	
	@RequestMapping("exam_sumary/{idexamination}")
	public String sumaryexam(ModelMap modelMap,@PathVariable("idexamination") int idexamination,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			modelMap.addAttribute("sumaryexam",examinationDao.getItembyID(idexamination));
			return "public.exam.listening.reading";
		}
		return "redirect:/";
	}
	
	@RequestMapping("all_exam_sumary")
	public String allsumaryexam(ModelMap modelMap,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			modelMap.addAttribute("allsumary",examinationDao.getAllItemsbycategory(3));
			return "public.allexam.listening.reading";
		}
		return "redirect:/";
	}
}
