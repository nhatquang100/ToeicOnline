package controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import entity.member;

@Controller
@RequestMapping("admin")
public class AdminIndexController {
	
	@RequestMapping("")
	public String index(HttpSession session, ModelMap modelMap){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			return "admin.index.index";
		}
		return "redirect:/";
	}
	
	@RequestMapping("{id}")
	public String indexs(HttpSession session, ModelMap modelMap,@PathVariable("id") String id){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			return "admin.index.index";
		}
		return "redirect:/";
	}
}
