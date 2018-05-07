package controller;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import constant.Defines;
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
	
	@RequestMapping(value={"{page}",""})
	public String index(ModelMap modelMap, @PathVariable(value="page", required = false) Integer page){
		if(page == null) {
			page = 1;
		}
		int sumPage = (int) Math.ceil((float)memberDao.countItem()/Defines.ROW_COUNT);
		int offset= (page - 1) * Defines.ROW_COUNT;
		modelMap.addAttribute("sumPage", sumPage);
		modelMap.addAttribute("page", page);
		modelMap.addAttribute("listmember", memberDao.getItems(offset));
		return "admin.member.index";
	}
	
	@RequestMapping("add")
	public String add(HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			if(member.getMemberid() == 1){
				return "admin.member.add";
			}
			return "redirect:/admin";
		}
		return "redirect:/";
	}
	@RequestMapping(value="add",method=RequestMethod.POST)
	public String add(@ModelAttribute("objmember") member member,@RequestParam(value="multiimage") CommonsMultipartFile multifile,Model model, RedirectAttributes ra,HttpServletRequest request,HttpSession session){
		member memberss = (entity.member) session.getAttribute("objmember");
		if (memberss != null){
			if(memberss.getMemberid() == 1){
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
				if(memberDao.addItem(member)>0){
					ra.addFlashAttribute("msg","Thêm thành công!!");
					return "redirect:/admin/member";
				}
				model.addAttribute("msg","có lỗi trong quá trình thêm!!!");
				return "admin.member.add";
			}
			return "redirect:/admin";
		}
		return "redirect:/";
	}
	
	@RequestMapping("edit/{id}")
	public String edit(@PathVariable("id") int id, ModelMap modelMap,HttpSession session){
		member memberss = (entity.member) session.getAttribute("objmember");
		if (memberss != null){
			if(memberss.getMemberid() == 1){
				modelMap.addAttribute("objmember", memberDao.getItem(id));
				return "admin.member.edit";
			}
			return "redirect:/admin";
		}
		return "redirect:/";
	}
	
	@RequestMapping(value="edit/{id}",method=RequestMethod.POST)
	public String edit(@ModelAttribute("objmember") member member,@RequestParam(value="multiimage") CommonsMultipartFile multifile,@PathVariable("id") int id,RedirectAttributes ra,Model model, BindingResult rs,HttpServletRequest request,HttpSession session){
		member memberss = (entity.member) session.getAttribute("objmember");
		if (memberss != null){
			if(memberss.getMemberid() == 1){
				if(rs.hasErrors()) {
			        return "admin.member.edit";
			    }
				member.setMemberid(id);
				member.setPassword(stringUtil.md5(member.getPassword()));
				if(String.valueOf(member.getCategorymemberid()) == null){
					member.setCategorymemberid(2);
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
				if(memberDao.editItem(member)>0){
						ra.addFlashAttribute("msg","sửa thành công!!");
					}else{
						ra.addFlashAttribute("msg","sửa thất bại!!");
					}
				return "redirect:/admin/member";
			}
			return "redirect:/admin";
		}
		return "redirect:/";
		
	}
	
	@RequestMapping("del/{id}")
	public String del(@PathVariable("id") int id,RedirectAttributes ra,HttpSession session){
		member memberss = (entity.member) session.getAttribute("objmember");
		if (memberss != null){
			if(memberss.getMemberid() == 1){
				if(memberDao.delItem(id)>0){
					ra.addFlashAttribute("msg","xóa thành công!!");
				}else{
					ra.addFlashAttribute("msg","xóa thất bại!!");
				}
				return "redirect:/admin/member";
			}
			return "redirect:/admin";
		}
		return "redirect:/";
	}
}