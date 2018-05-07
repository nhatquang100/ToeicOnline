package controller;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dao.ContactDao;
import entity.contact;
import entity.member;
import entity.result;

@Controller
public class AdminContactController {
	@Autowired
	private ContactDao contactDao;
	
	@RequestMapping("admin/contact")
	public String index(ModelMap modelMap,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			if(member.getCategorymemberid() == 1){
				modelMap.addAttribute("listcontact",contactDao.getItems());
				return "admin.contact.index";
			}
			return "redirect:/admin";
		}
		return "redirect:/";
	}
	
	@RequestMapping(value="create_contact",method=RequestMethod.POST)
	public String login(Model model, RedirectAttributes ra, HttpSession session,HttpServletRequest request,@ModelAttribute("contact") contact contact )throws SQLException{
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		contact.setDatecreate(timestamp);
		if(contactDao.addItem(contact)>0){
			model.addAttribute("msg","Liên hệ thành công, vui lòng chờ phản hồi mail!"); 
			return "public.index.home";
		}else{
			model.addAttribute("msg","Liên hệ không thành công!!"); 
			return "public.index.home";
		}
	}
	
	@RequestMapping("admin/contact/del/{id}")
	public String del(@PathVariable("id") int id,RedirectAttributes ra,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			if(member.getCategorymemberid() == 1){
				if(contactDao.delItem(id)>0){
					ra.addFlashAttribute("msg","xóa thành công!!");
				}else{
					ra.addFlashAttribute("msg","xóa thất bại!!");
				}
				return "redirect:/admin/contact";
			}
			return "redirect:/admin";
		}
		return "redirect:/";
	}
}
