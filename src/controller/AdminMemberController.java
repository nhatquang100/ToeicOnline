package controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import util.StringUtil;
import dao.MemberDao;
import entity.member;

@Controller
@RequestMapping("admin/member")
public class AdminMemberController {
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private StringUtil stringUtil;
	
	@RequestMapping("")
	public String index(Model model){
		model.addAttribute("listmember",memberDao.getAllItems());
		return "admin.member.index";
	}
	
	@RequestMapping("add")
	public String add(){
		return "admin.member.add";
	}
	@RequestMapping(value="add",method=RequestMethod.POST)
	public String add(@ModelAttribute("objmember") member member,Model model, RedirectAttributes ra){
		member.setIsactive(1);
		member.setCategorymemberid(2);
		member.setPassword(stringUtil.md5(member.getPassword()));
		ArrayList<member> list = (ArrayList<member>) memberDao.getItems();
		for(member objmb: list){
			if(member.getUsername().equals(objmb.getUsername())){
				model.addAttribute("msg","Tên đăng nhập đã tồn tại!!");
				return "admin.member.add";
			}
		}
		if(memberDao.addItem(member)>0){
			ra.addFlashAttribute("msg","Thêm thành công!!");
			return "redirect:/admin/member";
		}
		model.addAttribute("msg","có lỗi trong quá trình thêm!!!");
		return "admin.member.add";
	}
	
	@RequestMapping("edit/{id}")
	public String edit(@PathVariable("id") int id, ModelMap modelMap){
		modelMap.addAttribute("objmember", memberDao.getItem(id));
		return "admin.member.edit";
	}
	
	@RequestMapping(value="edit/{id}",method=RequestMethod.POST)
	public String edit(@ModelAttribute("objmember") member member,@PathVariable("id") int id,RedirectAttributes ra, BindingResult rs){
		if(rs.hasErrors()) {
	        return "admin.member.edit";
	    }
		member.setMemberid(id);
		member.setPassword(stringUtil.md5(member.getPassword()));
		if(String.valueOf(member.getCategorymemberid()) == null){
			member.setCategorymemberid(2);
		}
		if(memberDao.editItem(member)>0){
				ra.addFlashAttribute("msg","sửa thành công!!");
			}else{
				ra.addFlashAttribute("msg","sửa thất bại!!");
			}
		return "redirect:/admin/member";
	}
	
	@RequestMapping("del/{id}")
	public String del(@PathVariable("id") int id,RedirectAttributes ra){
		if(memberDao.delItem(id)>0){
			ra.addFlashAttribute("msg","xóa thành công!!");
		}else{
			ra.addFlashAttribute("msg","xóa thất bại!!");
		}
		return "redirect:/admin/member";
	}
}