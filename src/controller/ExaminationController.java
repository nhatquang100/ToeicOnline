package controller;

import java.sql.Timestamp;
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
import entity.question_answer_correct;
import entity.questionexam;
import entity.result;
import entity.resultListWraper;

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
			List<questionexam> lq1 = new ArrayList<questionexam>();
			List<questionexam> lq2 = new ArrayList<questionexam>();
			List<questionexam> lq3 = new ArrayList<questionexam>();
			List<questionexam> lq4 = new ArrayList<questionexam>();
			List<questionexam> lq5 = new ArrayList<questionexam>();
			List<questionexam> lq6 = new ArrayList<questionexam>();
			List<questionexam> lq7 = new ArrayList<questionexam>();
			List<question> lpart1 = new ArrayList<question>();
			List<question> lpart2 = new ArrayList<question>();
			List<question> lpart3 = new ArrayList<question>();
			List<question> lpart4 = new ArrayList<question>();
			List<question> lpart5 = new ArrayList<question>();
			List<question> lpart6 = new ArrayList<question>();
			List<question> lpart7 = new ArrayList<question>();
			
			for(examination_question obj:list){
				if(questionDao.getItembyID(obj.getQuestionid()).getQuestionpartid() == 1){
					question q1 = questionDao.getItembyID(obj.getQuestionid());
					questionexam qs1 = new questionexam(q1.getQuestionid(),q1.getAudio(),q1.getImage(),q1.getParagraph(),q1.getQuestion(),q1.getOption1(),
							q1.getOption2(),q1.getOption3(),q1.getOption4(),q1.getCorrectquestion(),q1.getLeveldifficult(),q1.getIsactive(),q1.getCategoryquestionid(),q1.getCategoryquestionname(),"",examinationid,q1.getQuestionpartid());
					lq1.add(qs1);
				}
				if(questionDao.getItembyID(obj.getQuestionid()).getQuestionpartid() == 2){
					question q2 = questionDao.getItembyID(obj.getQuestionid());
					questionexam qs2 = new questionexam(q2.getQuestionid(),q2.getAudio(),q2.getImage(),q2.getParagraph(),q2.getQuestion(),q2.getOption1(),
							q2.getOption2(),q2.getOption3(),q2.getOption4(),q2.getCorrectquestion(),q2.getLeveldifficult(),q2.getIsactive(),q2.getCategoryquestionid(),q2.getCategoryquestionname(),"",examinationid,q2.getQuestionpartid());
					lq2.add(qs2);
				}
				if(questionDao.getItembyID(obj.getQuestionid()).getQuestionpartid() == 3){
					question q3 = questionDao.getItembyID(obj.getQuestionid());
					questionexam qs3 = new questionexam(q3.getQuestionid(),q3.getAudio(),q3.getImage(),q3.getParagraph(),q3.getQuestion(),q3.getOption1(),
							q3.getOption2(),q3.getOption3(),q3.getOption4(),q3.getCorrectquestion(),q3.getLeveldifficult(),q3.getIsactive(),q3.getCategoryquestionid(),q3.getCategoryquestionname(),"",examinationid,q3.getQuestionpartid());
					lq3.add(qs3);
				}
				if(questionDao.getItembyID(obj.getQuestionid()).getQuestionpartid() == 4){
					question q4 = questionDao.getItembyID(obj.getQuestionid());
					questionexam qs4 = new questionexam(q4.getQuestionid(),q4.getAudio(),q4.getImage(),q4.getParagraph(),q4.getQuestion(),q4.getOption1(),
							q4.getOption2(),q4.getOption3(),q4.getOption4(),q4.getCorrectquestion(),q4.getLeveldifficult(),q4.getIsactive(),q4.getCategoryquestionid(),q4.getCategoryquestionname(),"",examinationid,q4.getQuestionpartid());
					lq4.add(qs4);
				}
				if(questionDao.getItembyID(obj.getQuestionid()).getQuestionpartid() == 5){
					question q5 = questionDao.getItembyID(obj.getQuestionid());
					questionexam qs5 = new questionexam(q5.getQuestionid(),q5.getAudio(),q5.getImage(),q5.getParagraph(),q5.getQuestion(),q5.getOption1(),
							q5.getOption2(),q5.getOption3(),q5.getOption4(),q5.getCorrectquestion(),q5.getLeveldifficult(),q5.getIsactive(),q5.getCategoryquestionid(),q5.getCategoryquestionname(),"",examinationid,q5.getQuestionpartid());
					lq5.add(qs5);
				}
				if(questionDao.getItembyID(obj.getQuestionid()).getQuestionpartid() == 6){
					question q6 = questionDao.getItembyID(obj.getQuestionid());
					questionexam qs6 = new questionexam(q6.getQuestionid(),q6.getAudio(),q6.getImage(),q6.getParagraph(),q6.getQuestion(),q6.getOption1(),
							q6.getOption2(),q6.getOption3(),q6.getOption4(),q6.getCorrectquestion(),q6.getLeveldifficult(),q6.getIsactive(),q6.getCategoryquestionid(),q6.getCategoryquestionname(),"",examinationid,q6.getQuestionpartid());
					lq6.add(qs6);
				}
				if(questionDao.getItembyID(obj.getQuestionid()).getQuestionpartid() == 7){
					question q7 = questionDao.getItembyID(obj.getQuestionid());
					questionexam qs7 = new questionexam(q7.getQuestionid(),q7.getAudio(),q7.getImage(),q7.getParagraph(),q7.getQuestion(),q7.getOption1(),
							q7.getOption2(),q7.getOption3(),q7.getOption4(),q7.getCorrectquestion(),q7.getLeveldifficult(),q7.getIsactive(),q7.getCategoryquestionid(),q7.getCategoryquestionname(),"",examinationid,q7.getQuestionpartid());
					lq7.add(qs7);
				}
//				question q = questionDao.getItembyID(obj.getQuestionid());
//				questionexam qs = new questionexam(q.getQuestionid(),q.getAudio(),q.getImage(),q.getParagraph(),q.getQuestion(),q.getOption1(),
//						q.getOption2(),q.getOption3(),q.getOption4(),q.getCorrectquestion(),q.getLeveldifficult(),q.getIsactive(),q.getCategoryquestionid(),q.getCategoryquestionname(),"",examinationid,q.getQuestionpartid()); 
//				lq.add(qs);
			}
			for(questionexam objh:lq1){
				lq.add(objh);
			}
			for(questionexam objh:lq2){
				lq.add(objh);
			}
			for(questionexam objh:lq3){
				lq.add(objh);
			}
			for(questionexam objh:lq4){
				lq.add(objh);
			}
			for(questionexam objh:lq5){
				lq.add(objh);
			}
			for(questionexam objh:lq6){
				lq.add(objh);
			}
			for(questionexam objh:lq7){
				lq.add(objh);
			}
			listquestion.setQuestionlist(lq);
			listquestion.setCategoryexaminationid(examinationDao.getItembyID(examinationid).getCategoryexamination());
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
			//System.out.println(member.getMembername());
			List<questionexam> objquestion = questionlistWraprer.getQuestionlist();
			int examinationid = 0;
			String stringchose = "";
			List<question_answer> qa = new ArrayList<question_answer>(); 
			for(questionexam obj:objquestion){
				examinationid = obj.getExaminationid();
				stringchose = stringchose.concat(obj.getQuestionid()+ "~" +obj.getChose() + "&" );
				question_answer question_answer = new question_answer(obj.getQuestionid(),obj.getChose());
				qa.add(question_answer);
			}
			Timestamp timestamp = new Timestamp(System.currentTimeMillis());
			result resutl = new result(0,member.getMemberid(),examinationid,stringchose,timestamp);
			resultDao.addItem(resutl);
			
			//check point
			int point = 0;
			for(question_answer objq:qa){
				//System.out.println(objq.getChose() );
				//System.out.println(questionDao.getItembyID(objq.getQuestionid()).getCorrectquestion()+ "\n");
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
	
	@RequestMapping(value="exam/getresult/detail/{resul}")
	public String detailresult(@PathVariable("resul") int resul, Model model,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			//get String result
			result rs = resultDao.getItembyID(resul);
			String [] questionans = rs.getChoseofmember().split("&");
			List<question_answer> detailreuslt = new ArrayList<question_answer>();
			for(int i = 0 ; i < questionans.length;i++){
				//System.out.println(questionans[i]);
				String [] tmp = questionans[i].split("~");
				question_answer qa = new question_answer(Integer.parseInt(tmp[0]),tmp[1]);
				detailreuslt.add(qa);
			}
			
			//send attribute question and choseofmember
			List<question_answer_correct> objqac = new ArrayList<question_answer_correct>();
			for(question_answer obj:detailreuslt){
				question_answer_correct tmp = new question_answer_correct(obj.getQuestionid(),
						questionDao.getItembyID(obj.getQuestionid()).getImage(),
						questionDao.getItembyID(obj.getQuestionid()).getAudio(),
						questionDao.getItembyID(obj.getQuestionid()).getParagraph(),
						questionDao.getItembyID(obj.getQuestionid()).getOption1(),
						questionDao.getItembyID(obj.getQuestionid()).getOption2(),
						questionDao.getItembyID(obj.getQuestionid()).getOption3(),
						questionDao.getItembyID(obj.getQuestionid()).getOption4(),
						obj.getChose(),questionDao.getItembyID(obj.getQuestionid()).getCorrectquestion(),
						questionDao.getItembyID(obj.getQuestionid()).getCategoryquestionid(),
						questionDao.getItembyID(obj.getQuestionid()).getQuestion(),
						questionDao.getItembyID(obj.getQuestionid()).getQuestionpartid());
				objqac.add(tmp);
			}
			resultListWraper resultListWraper = new resultListWraper();
			resultListWraper.setCategoryexaminationid(examinationDao.getItembyID(rs.getExaminationid()).getCategoryexamination());
			resultListWraper.setQac(objqac);
			model.addAttribute("resultListWraper",resultListWraper);
			return "public.exam.result.detail";
		}else{
			model.addAttribute("msg","Vui lòng đăng nhập hoặc đăng kí thành viên!");
			return "public.index.home";
		}
		
	}
	
	@RequestMapping(value="getallresult")
	public String getallresult( Model model,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			model.addAttribute("listresult",resultDao.getallItembyID(member.getMemberid()));
			return "public.exam.allresult";
		}else{
			model.addAttribute("msg","Vui lòng đăng nhập hoặc đăng kí thành viên!");
			return "public.index.home";
		}
		
	}
}
