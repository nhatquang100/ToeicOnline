package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.ExaminationDao;
import dao.Examination_Question_Dao;
import dao.QuestionDao;
import dao.ResultDao;
import entity.examination_question;
import entity.member;
import entity.question;
import entity.questionListWraper;
import entity.question_answer;
import entity.questionexam;
import entity.result;

@Controller
public class ExaminationController {
	@Autowired
	private  Examination_Question_Dao eqDao;
	
	@Autowired
	private QuestionDao questionDao;
	
	@Autowired
	private ResultDao resultDao;
	
	@Autowired ExaminationDao examinationDao;
	
	@RequestMapping("exam/{examinationid}")
	public String examindex(Model model,@PathVariable("examinationid") int examinationid,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			questionListWraper listquestion = new questionListWraper();
			List<examination_question> list = eqDao.getItembyID(examinationid);
			List<questionexam> lq = new ArrayList<questionexam>();
			for(examination_question obj:list){
				question q = questionDao.getItembyID(obj.getQuestionid());
				questionexam qs = new questionexam(q.getQuestionid(),q.getAudio(),q.getImage(),q.getParagraph(),q.getQuestion(),q.getOption1(),
						q.getOption2(),q.getOption3(),q.getOption4(),q.getCorrectquestion(),q.getLeveldifficult(),q.getIsactive(),q.getCategoryquestionid(),q.getCategoryquestionname(),"",0); 
				lq.add(qs);
				listquestion.setQuestionlist(lq);
			}
			
			model.addAttribute("listquestion",listquestion);
			model.addAttribute("xemaminationid",examinationid);
			return "public.exam";
		}else{
			model.addAttribute("msg","Vui lòng đăng nhập hoặc đăng kí thành viên!");
			return "public.index.home";
		}
		
	}
	
	@RequestMapping(value="exam/getresult",method=RequestMethod.POST)
	public String getruslut(Model model, @ModelAttribute ("questionListWraper") questionListWraper questionlistWraprer,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			System.out.println(member.getMembername());
			List<questionexam> objquestion = questionlistWraprer.getQuestionlist();
			int examinationid = 0;
			String stringchose = "";
			List<question_answer> qa = new ArrayList<question_answer>(); 
			for(questionexam obj:objquestion){
				examinationid = obj.getExaminationid();
				stringchose = stringchose.concat(obj.getQuestionid()+ "~" +obj.getChose() + "|" );
				question_answer question_answer = new question_answer(obj.getQuestionid(),obj.getChose());
				qa.add(question_answer);
			}
			result resutl = new result(0,member.getMemberid(),examinationid,stringchose);
			resultDao.addItem(resutl);
			
			//check point
			int point = 0;
			for(question_answer objq:qa){
				System.out.println(objq.getChose() );
				System.out.println(questionDao.getItembyID(objq.getQuestionid()).getCorrectquestion()+ "\n");
				if(objq.getChose() != null && objq.getChose().equals(questionDao.getItembyID(objq.getQuestionid()).getCorrectquestion())){
					point += 1;
				}
			}
			int sumquestioninexam = eqDao.countItem(examinationid);
			model.addAttribute("point",point);
			model.addAttribute("sum",sumquestioninexam);
			model.addAttribute("examination",examinationDao.getItembyID(examinationid));
			model.addAttribute("resul",resultDao.getNewItem().getResultid());
			return "public.exam.result";
			
		}else{
			model.addAttribute("msg","Vui lòng đăng nhập hoặc đăng kí thành viên!");
			return "public.index.home";
		}
		
	}
	
	@RequestMapping("/result/detail/${id}")
	public String listenedit(@PathVariable("id") int resultid, Model model,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			result rs = resultDao.getItembyID(resultid);
			System.out.println(rs.getChoseofmember());
			
			return "public.exam.result.detail";
		}else{
			model.addAttribute("msg","Vui lòng đăng nhập hoặc đăng kí thành viên!");
			return "public.index.home";
		}
		
	}
}
