package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.ExaminationDao;
import dao.MemberDao;


@Controller
@RequestMapping("admin/setExamination")
public class AdminSetActiveExaminationController {
	@Autowired
	private ExaminationDao examinationDao;

	@RequestMapping(value = "", method = RequestMethod.POST)
	public @ResponseBody String setActive(@RequestParam("aid") int id, @RequestParam("aisactive") int isactive) {
		String title = "";
		String image = "";
		if (isactive == 0) {
			isactive = 1;
			title = "Ngừng kích hoạt";
			image = "tick-circle.gif";
		} else {
			isactive = 0;
			title = "Kích hoạt";
			image = "minus-circle.gif";
		}
		examinationDao.updateStatus(id, isactive);
		/*String result = "<a href=\"javascript:void(0)\"" + " onclick=\"return setActive(" + id + "," + isactive + ",'"
				+ "')\"" + " title=\"" + title + "\">" + "<img src='../templates/admin/images/" + image
				+ "'\" alt=\"\" />" + "</a>";*/
		String result ="<a href='javascript:void(0)' onclick='return setActive("+id+","+isactive+")' title='"+title+"' ><img src='../templates/admin/images/"+image+"' alt='' /></a>";

		return result;
	}
}
