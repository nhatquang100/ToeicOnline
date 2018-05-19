package controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.ExaminationDao;
import dao.Examination_Question_Dao;
import dao.QuestionDao;
import dao.ResultDao;
import entity.examination_question;
import entity.result;


@Controller
@RequestMapping("public/saveQuestionofexam")
public class PublicSaveQuestiontoResutlController {
	@Autowired
	private QuestionDao questionDao;
	
	@Autowired
	private ResultDao resultDao;
	
	@Autowired
	private Examination_Question_Dao examination_Question_Dao;
	
	@Autowired
	private  ExaminationDao examinationDao;
	
	public void sort(Integer[] listquestionid) {
		for(int i = 0; i < listquestionid.length - 1;i++){
			if (listquestionid[i] < listquestionid[i+1]){
				int tmp = listquestionid[i];
				listquestionid[i] = listquestionid[i + 1];
				listquestionid[i + 1] = tmp;
			}
		}
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public @ResponseBody int setActive(@RequestParam(value="alistquestion[]") Integer[] listquestionid, @RequestParam("aexaminationid") int examinationid) {
		List<Integer> myCoords = new ArrayList<Integer>();
		Arrays.sort( listquestionid );
		for(int i = 0; i < listquestionid.length;i++){
			myCoords.add(listquestionid[i]);
		}
		for( int i =0; i < myCoords.size()-1;){
			if (myCoords.get(i).equals(myCoords.get(i + 1))) {
				myCoords.remove(i + 1);
		    } else {
		        i++;
		    }
		}
		for( Integer obj:myCoords){
			examination_question tamp = new examination_question(examinationid,obj);
			System.out.println(obj + " " + examinationid);
			examination_Question_Dao.addItem(tamp);
		}
		return 0;
	}
}
