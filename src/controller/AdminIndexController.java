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
	public String index(HttpSession session, ModelMap modelMap,@SessionAttribute("sessionmember") member sessionmember){
		System.out.println(sessionmember.getMembername());
		return "admin.index.index";
	}
	
	@RequestMapping("{id}")
	public String indexs(HttpSession session, ModelMap modelMap,@SessionAttribute("sessionmember") member sessionmember,@PathVariable("id") String id){
		System.out.println(sessionmember.getMembername());
		return "admin.index.index";
	}
}
