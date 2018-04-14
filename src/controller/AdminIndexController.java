package controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.member;

@Controller
@RequestMapping("admin")
public class AdminIndexController {
	
	@RequestMapping("")
	public String index(HttpSession session, ModelMap modelMap){
		member sessionmember = (member) session.getAttribute("sessionmember");
		System.out.println(sessionmember.getMembername());
		return "admin.index.index";
	}
}
