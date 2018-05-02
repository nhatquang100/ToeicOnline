package controller;

import java.io.File;
import java.sql.Timestamp;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import dao.ExaminationDao;
import dao.Examination_Question_Dao;
import dao.QuestionDao;
import entity.examination;
import entity.examination_question;
import entity.member;
import entity.question;

@Controller
@RequestMapping("/create_examination")
public class Create_ExaminationController {
	@Autowired
	private ExaminationDao examinationDao;
	@Autowired
	private QuestionDao questionDao;
	@Autowired
	private Examination_Question_Dao examination_Question_Dao;
	
	public static List<question> pickNRandom(List<question> lst, int n) {
	    List<question> copy = new LinkedList<question>(lst);
	    Collections.shuffle(copy);
	    return copy.subList(0, n);
	}
	
	@RequestMapping(value = "",method= RequestMethod.POST)
	public String createExamination(@ModelAttribute("objexamination") examination examination, ModelMap modelMap,@RequestParam(value="multiimage") CommonsMultipartFile multiimage,BindingResult rs,HttpServletRequest request){
		
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		examination.setDatecreate(timestamp);
		
		String nameFileimage = multiimage.getOriginalFilename();
		examination.setImage(nameFileimage);
		if(!"".equals(nameFileimage) ){
			String dirFile = request.getServletContext().getRealPath("upload");
			System.out.println(dirFile);
			File fileDir = new File(dirFile);
			if(!fileDir.exists()){
				fileDir.mkdir();
			}
			try {
				multiimage.transferTo(new File(fileDir+File.separator+nameFileimage));
				System.out.println("Upload file thành công!");
				modelMap.addAttribute("filename", nameFileimage);
			} catch (Exception e) {
				System.out.println(e.getMessage());
				System.out.println("Upload file thất bại!");
			}
		}
		//checklevel
		int level = examination.getLeveldifficult();
		int categoryexamination = examination.getCategoryexamination();
		List<question> listtmp = null;
		if(categoryexamination < 3){
			listtmp = questionDao.getItembyLevelandCategory(level, categoryexamination);
		}else{
			listtmp = questionDao.getItembyLevelandCategory(level, 1);

			List<question> tmp2 = questionDao.getItembyLevelandCategory(level, 2);
			for(question objQuestion2:tmp2){
				listtmp.add(objQuestion2);
			}
		}
		List<question> randomPicks = null;

		if(listtmp.size()>=50){
			randomPicks = pickNRandom(listtmp, 50);
		}else{
			randomPicks = pickNRandom(listtmp, listtmp.size());
		}
		examination lastexa = examinationDao.getNewItem();
		
		if(examinationDao.addItem(examination)>0){

			for(question objqs:randomPicks){
				examination_question eq = new examination_question(lastexa.getExaminationid()+1,objqs.getQuestionid());
				examination_Question_Dao.addItem(eq);		
			}
			modelMap.addAttribute("msg","Tạo đề thi thành công!!");
			return "public.index.home";
		}
		modelMap.addAttribute("msg","Tạo đề thi thất bại!!!");
		return "public.index.home";
	}
}
