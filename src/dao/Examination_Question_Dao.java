package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
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
	
	public List<examination_question> getItembyID(int id){
		String sql="SELECT * from questionexamination where examinationid = ?";
		return jdbcTemplate.query(sql,new Object[]{id}, new BeanPropertyRowMapper<examination_question>(examination_question.class));
	}
	
	public int countItem(int examinationid) {
		String sql = "SELECT COUNT(*) AS countQuestion FROM questionexamination where examinationid = ?";
		return jdbcTemplate.queryForObject(sql,new Object[]{examinationid}, Integer.class);
	}
}
