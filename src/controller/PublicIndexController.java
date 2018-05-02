package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.ExaminationDao;

@Controller
public class PublicIndexController {
	@Autowired
	private ExaminationDao examinationDao;
	
	@RequestMapping("")
	public String index(){
		return "public.index.index";
	}
	
	@RequestMapping("home")
	public String home(ModelMap modelMap){
		modelMap.addAttribute("listexamlistening",examinationDao.getExaminationListenLimit());
		modelMap.addAttribute("listexamreading",examinationDao.getExaminationReadingLimit());
		modelMap.addAttribute("listexamsumary",examinationDao.getExaminationSumaryLimit());
		return "public.index.home";
	}
}
