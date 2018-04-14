package controller;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dao.MemberDao;
import entity.member;
import util.StringUtil;;

@Controller
public class LoginController {
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private StringUtil stringUtil;
	
	@RequestMapping("login")
	public String login(){
		return "public.login";
	}
	
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String login(Model model,@RequestParam("username") String username, @RequestParam("password") String password , RedirectAttributes ra, HttpSession session )throws SQLException{
		ArrayList<member> list = (ArrayList<member>) memberDao.getItems();
		for(member objmb: list){
			if(username.equals(objmb.getUsername())  && stringUtil.md5(password).equals(objmb.getPassword())){
				member objmember = new member();
				objmember.setUsername(username);
				objmember.setPassword(stringUtil.md5(password));
				session.setAttribute("sessionmember", objmember);
				return "redirect:/admin";
			}
		}
		model.addAttribute("msg","Sai tên đăng nhập hoặc mật khẩu!!"); 
		return "public.login";
	}
	
	@RequestMapping(value="registry",method=RequestMethod.POST)
	public String Registry(Model model,@RequestParam("username") String username, @RequestParam("password") String password, @RequestParam("membername") String membername, RedirectAttributes ra){
		ArrayList<member> list = (ArrayList<member>) memberDao.getItems();
		for(member objmb: list){
			if(username.equals(objmb.getUsername())){
				model.addAttribute("msg","Tên đăng nhập đã tồn tại!!");
				return "public.login";
			}
		}
		member member = new member(0,membername,username,stringUtil.md5(password),1,3,"");
		if (memberDao.addItem(member) > 0){
			model.addAttribute("msg","Đăng kí thành công!!");
			return "public.login";
		}
		model.addAttribute("msg","Đăng kí thất bại!!!");
		return "public.login";
	}
}
