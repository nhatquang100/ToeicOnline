package controller;

import java.io.File;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.management.Notification;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
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
		return "public.index.home";
	}
	
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String login(Model model,@RequestParam("username") String username, @RequestParam("password") String password , RedirectAttributes ra, HttpSession session,HttpServletRequest request )throws SQLException{
		ArrayList<member> list = (ArrayList<member>) memberDao.getItems();
		for(member objmb: list){
			if(username.equals(objmb.getUsername())  && stringUtil.md5(password).equals(objmb.getPassword())){
				member objmember = new member();
				objmember.setUsername(username);
				objmember.setPassword(stringUtil.md5(password));
				session.setAttribute("sessionmember", objmember);
				if(memberDao.getMemberbyUsername(username).getCategorymemberid() != 1){
					session.setAttribute("objmember",(memberDao.getMemberbyUsername(username)));
					model.addAttribute("msg","Đăng nhập thành công!!");
					return "redirect:/";
				}else{
					session.setAttribute("objmember",(memberDao.getMemberbyUsername(username)));
					return "redirect:/admin";
				}
				
			}
		}
		model.addAttribute("msg","Sai tên đăng nhập hoặc mật khẩu!!"); 
		return "public.index.home";
	}
	
	@RequestMapping(value="registry",method=RequestMethod.POST)
	public String Registry(Model model,@ModelAttribute("objmember") member member,@RequestParam(value="avatarfile") CommonsMultipartFile multifile, RedirectAttributes ra,HttpServletRequest request){
		ArrayList<member> list = (ArrayList<member>) memberDao.getItems();
		for(member objmb: list){
			if(member.getUsername().equals(objmb.getUsername())){
				model.addAttribute("msg","Tên đăng nhập đã tồn tại!!");
				return "public.index.home";
			}
		}
		String nameFile = multifile.getOriginalFilename();
		member.setAvatar(nameFile);
		System.out.println(member.getAvatar());
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
		
		member.setPassword(stringUtil.md5(member.getPassword()));
		member.setIsactive(1);
		member.setCategorymemberid(3);
		if (memberDao.addItem(member) > 0){
			model.addAttribute("msg","Đăng kí thành công!!");
			return "public.index.home";
		}
		model.addAttribute("msg","Đăng kí thất bại!!!");
		return "public.index.home";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session,HttpServletRequest request){
		request.getSession().invalidate();
		return "public.index.home";
	}
}
