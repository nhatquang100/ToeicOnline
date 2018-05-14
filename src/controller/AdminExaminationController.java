package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import constant.Defines;
import dao.ExaminationDao;
import entity.examination;
import entity.member;

@Controller
@RequestMapping("/admin/examination")
public class AdminExaminationController {
	@Autowired
	private ExaminationDao examinationDao;
	
	@RequestMapping(value={"{page}",""})
	public String index(ModelMap modelMap, @PathVariable(value="page", required = false) Integer page,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			if(page == null) {
				page = 1;
			}
			int sumPage = (int) Math.ceil((float)examinationDao.countItem()/Defines.ROW_COUNT);
			int offset= (page - 1) * Defines.ROW_COUNT;
			modelMap.addAttribute("sumPage", sumPage);
			modelMap.addAttribute("page", page);
			modelMap.addAttribute("listexamination", examinationDao.getItems(offset));
			return "admin.examination.index";
		}
		return "redirect:/admin";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String search(@ModelAttribute("examinationname") String examinationname ,RedirectAttributes ra,ModelMap modelMap, BindingResult rs,HttpServletRequest request,HttpSession session){
		member memberss = (entity.member) session.getAttribute("objmember");
		if (memberss != null){
			if(examinationname.isEmpty()) {
				return "redirect:/admin/examination";
			}else {
				List<examination> list = examinationDao.getExaminationByName(examinationname);
				modelMap.addAttribute("listexamination", list);
				return "admin.examination.search";
			}
		}
		return "redirect:/";
	}
}
