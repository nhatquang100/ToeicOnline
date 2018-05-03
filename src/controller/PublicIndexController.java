package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.ExaminationDao;
import dao.MemberDao;

@Controller
public class PublicIndexController {
	@Autowired
	private ExaminationDao examinationDao;
	@Autowired
	private MemberDao memberDao;
	
	@RequestMapping("")
	public String index(ModelMap modelMap,HttpSession session,HttpServletRequest request){
		modelMap.addAttribute("listexamlistening",examinationDao.getExaminationListenLimit());
		modelMap.addAttribute("listexamreading",examinationDao.getExaminationReadingLimit());
		modelMap.addAttribute("listexamsumary",examinationDao.getExaminationSumaryLimit());
		session.setAttribute("newmember",memberDao.getAllItemsLimit());
		session.setAttribute("allmember", memberDao.countItem());
		return "public.index.home";
	}

}
