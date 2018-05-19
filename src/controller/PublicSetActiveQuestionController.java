package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.QuestionDao;


@Controller
@RequestMapping("public/setActiveQuestion")
public class PublicSetActiveQuestionController {
	@Autowired
	private QuestionDao questionDao;

	@RequestMapping(value = "", method = RequestMethod.POST)
	public @ResponseBody String setActive(@RequestParam("aid") int id, @RequestParam("aisactive") int isactive, @RequestParam("apartid") int partid) {
		String title = "";
		String image = "";
		if (isactive == 0) {
			isactive = 1;
			image = "imagess.jpg";
		} else {
			isactive = 0;
			image = "icon-red.jpg";
		}
//		questionDao.updateStatus(id, isactive);
		/*String result = "<a href=\"javascript:void(0)\"" + " onclick=\"return setActive(" + id + "," + isactive + ",'"
				+ "')\"" + " title=\"" + title + "\">" + "<img src='../templates/admin/images/" + image
				+ "'\" alt=\"\" />" + "</a>";*/
		String result ="<a href='javascript:void(0)' onclick='return setActive("+id+","+isactive+","+partid+")'><img height='30' width='30' src='/ToeicOnline/templates/public/images/"+image+"' alt='' /></a>";

		return result;
	}
}
