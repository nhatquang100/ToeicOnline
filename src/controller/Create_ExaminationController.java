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
	
	@RequestMapping(value = "create_examination",method= RequestMethod.POST)
	public String createExamination(@ModelAttribute("objexamination") examination examination, ModelMap modelMap,@RequestParam(value="multiimage") CommonsMultipartFile multiimage,BindingResult rs,HttpServletRequest request){
		
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		examination.setDatecreate(timestamp);
		examination.setIsactive(1);
		
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
		int categoryquestionid = examination.getCategoryexamination();
		List<question> listtmp1 = null;
		List<question> listtmp2 = null;
		List<question> listtmp3 = null;
		List<question> listtmp4 = null;
		List<question> listtmp5 = null;
		List<question> listtmp6 = null;
		List<question> listtmp7 = null;
		if(categoryquestionid < 3){
			//listtmp = questionDao.getItembyLevelandCategory(level, categoryquestionid);
			//reading: part5: 50 cau, part6:12 cau, part7:28cau
			//listening: part1: 10cau, part2:30cau, part3:30cau, part4:30cau
			if(categoryquestionid == 1){ //islistening
				listtmp1 = questionDao.getItembyLevelandCategory(level, categoryquestionid,1);
				listtmp2 = questionDao.getItembyLevelandCategory(level, categoryquestionid,2);
				listtmp3 = questionDao.getItembyLevelandCategory(level, categoryquestionid,3);
				listtmp4 = questionDao.getItembyLevelandCategory(level, categoryquestionid,4);
				
				List<question> randomPicks = null;
				
				if(listtmp1.size()>10){
					randomPicks = pickNRandom(listtmp1, 10);
				}else{
					randomPicks = pickNRandom(listtmp1, listtmp1.size());
				}
//				-----------------------------------------------------
				if(listtmp2.size()>30){
					for(question obj:pickNRandom(listtmp2, 30)){
						randomPicks.add(obj);
					}
				}else{
					for(question obj:pickNRandom(listtmp2, listtmp2.size())){
						randomPicks.add(obj);
					}
				}
//				-----------------------------------------------------
				if(listtmp3.size()>30){
					for(question obj:pickNRandom(listtmp3, 30)){
						randomPicks.add(obj);
					}
				}else{
					for(question obj:pickNRandom(listtmp3, listtmp3.size())){
						randomPicks.add(obj);
					}
				}
//				--------------------------------------------------------
				if(listtmp4.size()>30){
					for(question obj:pickNRandom(listtmp4, 30)){
						randomPicks.add(obj);
					}
				}else{
					for(question obj:pickNRandom(listtmp4, listtmp4.size())){
						randomPicks.add(obj);
					}
				}
//				---------------------------------------------------------
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
			}else{ //isreading
				listtmp5 = questionDao.getItembyLevelandCategory(level, categoryquestionid,5);
				listtmp6 = questionDao.getItembyLevelandCategory(level, categoryquestionid,6);
				listtmp7 = questionDao.getItembyLevelandCategory(level, categoryquestionid,7);
				
				List<question> randomPicks = null;
				
				if(listtmp5.size()>50){
					randomPicks = pickNRandom(listtmp5, 50);
				}else{
					randomPicks = pickNRandom(listtmp5, listtmp5.size());
				}
//				-----------------------------------------------------
				if(listtmp6.size()>12){
					for(question obj:pickNRandom(listtmp6, 12)){
						randomPicks.add(obj);
					}
				}else{
					for(question obj:pickNRandom(listtmp6, listtmp6.size())){
						randomPicks.add(obj);
					}
				}
//				-----------------------------------------------------
				if(listtmp7.size()>28){
					for(question obj:pickNRandom(listtmp7, 28)){
						randomPicks.add(obj);
					}
				}else{
					for(question obj:pickNRandom(listtmp7, listtmp7.size())){
						randomPicks.add(obj);
					}
				}
//				--------------------------------------------------------
				
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
			
			
		}else{//issumary 200question
			listtmp1 = questionDao.getItembyLevelandCategory(level, 1,1);
			listtmp2 = questionDao.getItembyLevelandCategory(level, 1,2);
			listtmp3 = questionDao.getItembyLevelandCategory(level, 1,3);
			listtmp4 = questionDao.getItembyLevelandCategory(level, 1,4);
			listtmp5 = questionDao.getItembyLevelandCategory(level, 2,5);
			listtmp6 = questionDao.getItembyLevelandCategory(level, 2,6);
			listtmp7 = questionDao.getItembyLevelandCategory(level, 2,7);
//			listtmp = questionDao.getItembyLevelandCategory(level, 1);

//			List<question> tmp2 = questionDao.getItembyLevelandCategory(level, 2);
//			for(question objQuestion2:tmp2){
//				listtmp.add(objQuestion2);
//			}
			List<question> randomPicks = null;
			
			if(listtmp1.size()>10){
				randomPicks = pickNRandom(listtmp1, 10);
			}else{
				randomPicks = pickNRandom(listtmp1, listtmp1.size());
			}
//			-----------------------------------------------------
			if(listtmp2.size()>30){
				for(question obj:pickNRandom(listtmp2, 30)){
					randomPicks.add(obj);
				}
			}else{
				for(question obj:pickNRandom(listtmp2, listtmp2.size())){
					randomPicks.add(obj);
				}
			}
//			-----------------------------------------------------
			if(listtmp3.size()>30){
				for(question obj:pickNRandom(listtmp3, 30)){
					randomPicks.add(obj);
				}
			}else{
				for(question obj:pickNRandom(listtmp3, listtmp3.size())){
					randomPicks.add(obj);
				}
			}
//			--------------------------------------------------------
			if(listtmp4.size()>30){
				for(question obj:pickNRandom(listtmp4, 30)){
					randomPicks.add(obj);
				}
			}else{
				for(question obj:pickNRandom(listtmp4, listtmp4.size())){
					randomPicks.add(obj);
				}
			}
//			---------------------------------------------------------
			if(listtmp5.size()>50){
				for(question obj:pickNRandom(listtmp5, 50)){
					randomPicks.add(obj);
				}
			}else{
				for(question obj:pickNRandom(listtmp5, listtmp5.size())){
					randomPicks.add(obj);
				}
			}
//			---------------------------------------------------------
			if(listtmp6.size()>12){
				for(question obj:pickNRandom(listtmp6, 12)){
					randomPicks.add(obj);
				}
			}else{
				for(question obj:pickNRandom(listtmp6, listtmp6.size())){
					randomPicks.add(obj);
				}
			}
//			---------------------------------------------------------
			if(listtmp7.size()>28){
				for(question obj:pickNRandom(listtmp7, 28)){
					randomPicks.add(obj);
				}
			}else{
				for(question obj:pickNRandom(listtmp7, listtmp7.size())){
					randomPicks.add(obj);
				}
			}
//			---------------------------------------------------------
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
	@RequestMapping(value = "chosequestion",method= RequestMethod.POST)
	public String createExamination_chosequestion(@ModelAttribute("objexamination") examination examination, ModelMap modelMap,@RequestParam(value="multiimage") CommonsMultipartFile multiimage,BindingResult rs,HttpServletRequest request){
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		examination.setDatecreate(timestamp);
		examination.setIsactive(1);
		
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
		if(examinationDao.addItem(examination)>0){
			int level = examination.getLeveldifficult();
			int categoryquestionid = examination.getCategoryexamination();
			if(categoryquestionid == 1){ //listening
				modelMap.addAttribute("part1",questionDao.getItembyLevelandCategory(level, 1,1));
				modelMap.addAttribute("part2",questionDao.getItembyLevelandCategory(level, 1,2));
				modelMap.addAttribute("part3",questionDao.getItembyLevelandCategory(level, 1,3));
				modelMap.addAttribute("part4",questionDao.getItembyLevelandCategory(level, 1,4));
			}else if(categoryquestionid == 2){//reading
				modelMap.addAttribute("part5",questionDao.getItembyLevelandCategory(level, 2,5));
				modelMap.addAttribute("part6",questionDao.getItembyLevelandCategory(level, 2,6));
				modelMap.addAttribute("part7",questionDao.getItembyLevelandCategory(level, 2,7));
			}else{//sumary
				modelMap.addAttribute("part1",questionDao.getItembyLevelandCategory(level, 1,1));
				modelMap.addAttribute("part2",questionDao.getItembyLevelandCategory(level, 1,2));
				modelMap.addAttribute("part3",questionDao.getItembyLevelandCategory(level, 1,3));
				modelMap.addAttribute("part4",questionDao.getItembyLevelandCategory(level, 1,4));
				modelMap.addAttribute("part5",questionDao.getItembyLevelandCategory(level, 2,5));
				modelMap.addAttribute("part6",questionDao.getItembyLevelandCategory(level, 2,6));
				modelMap.addAttribute("part7",questionDao.getItembyLevelandCategory(level, 2,7));
			}
			modelMap.addAttribute("examinationid",examinationDao.getNewItem().getExaminationid());
			modelMap.addAttribute("categoryexaminationid",examinationDao.getNewItem().getCategoryexamination());
			return "public.exam.chose";
		}
		modelMap.addAttribute("msg","Tạo đề thi thất bại!!!");
		return "public.index.home"; 
	}

}
