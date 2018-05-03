package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExaminationController {
	
	@RequestMapping("exam/{examinationid}")
	public String examindex(ModelMap modelMap,@PathVariable("examinationid") int examinationid){
		return "public.exam";
	}
}
