package dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entity.examination;
import entity.examination_question;

@Repository
public class Examination_Question_Dao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public int addItem(examination_question obj){
		String sql="insert into questionexamination(examinationid,questionid) values(?,?)";
		return jdbcTemplate.update(sql,new Object[]{obj.getExaminationid(),obj.getQuestionid()});
	}
}
