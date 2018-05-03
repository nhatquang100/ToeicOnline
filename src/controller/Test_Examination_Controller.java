package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.ExaminationDao;

@Controller
public class Test_Examination_Controller {
	@Autowired
	private ExaminationDao examinationDao;
	
	@RequestMapping("exam_reading/{idexamination}")
	public String readingexam(ModelMap modelMap,@PathVariable("idexamination") int idexamination){
		modelMap.addAttribute("examreading",examinationDao.getItembyID(idexamination));
		return "public.exam.reading";
	}
	
	@RequestMapping("all_exam_reading")
	public String allreadingexam(ModelMap modelMap){
		modelMap.addAttribute("allexamreading",examinationDao.getAllItemsbycategory(2));
		return "public.allexam.reading";
	}
	
	@RequestMapping("exam_listening/{idexamination}")
	public String listeninngexam(ModelMap modelMap,@PathVariable("idexamination") int idexamination){
		modelMap.addAttribute("examlistening",examinationDao.getItembyID(idexamination));
		return "public.exam.listening";
	}
	
	@RequestMapping("all_exam_listening")
	public String alllisteninngexam(ModelMap modelMap){
		modelMap.addAttribute("allexamlistening",examinationDao.getAllItemsbycategory(1));
		return "public.allexam.listening";
	}
	
	@RequestMapping("exam_sumary/{idexamination}")
	public String sumaryexam(ModelMap modelMap,@PathVariable("idexamination") int idexamination){
		modelMap.addAttribute("sumaryexam",examinationDao.getItembyID(idexamination));
		return "public.exam.listening.reading";
	}
	
	@RequestMapping("all_exam_sumary")
	public String allsumaryexam(ModelMap modelMap){
		modelMap.addAttribute("allsumary",examinationDao.getAllItemsbycategory(3));
		return "public.allexam.listening.reading";
	}
}
