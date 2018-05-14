package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import constant.Defines;
import entity.examination;
import entity.member;
import entity.question;

@Repository
public class QuestionDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<question> getItems(int offset) {
		String sql = "SELECT questionid, audio, image, paragraph, question,option1,option2,option3,option4,correctquestion,leveldifficult, isactive,questionpartid, a.categoryquestionid AS categoryquestionid, b.categoryquestionname AS categoryquestionname FROM question AS a INNER JOIN categoryquestion AS b ON a.categoryquestionid = b.categoryquestionid ORDER BY questionid ASC LIMIT ?, ?";
		return jdbcTemplate.query(sql, new Object[]{offset, Defines.ROW_COUNT}, new BeanPropertyRowMapper<question>(question.class));	
	}
	
	public question getItembyID(int id){
		String sql="SELECT * from question where questionid = ?";
		return jdbcTemplate.queryForObject(sql,new Object[]{id}, new BeanPropertyRowMapper<question>(question.class));
	}
	
	public int countItem() {
		String sql = "SELECT COUNT(*) AS countQuestion FROM question ";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	
	public int updateStatus(int id, int isactive) {
		return jdbcTemplate.update("update question set isactive = ? where questionid = ?", new Object[] { isactive, id });
	}
	
	public question getItem(int questionid) {
		String sql = "SELECT * FROM question WHERE questionid = ?";
		return jdbcTemplate.queryForObject(sql,new Object []{questionid}, new BeanPropertyRowMapper<question>(question.class));
	}
	
	public int addItem(question question) {
		String sql="insert into question(audio,image, paragraph, question,option1,option2,option3,option4,correctquestion,leveldifficult,isactive,categoryquestionid,questionpartid) values(?,?,?,?,?,?,?,?,?,?,?,?,?) ";
		return jdbcTemplate.update(sql,new Object[]{question.getAudio(), question.getImage(), question.getParagraph(),question.getQuestion(), question.getOption1(),question.getOption2(),question.getOption3(),question.getOption4(),question.getCorrectquestion(),question.getLeveldifficult(),question.getIsactive(),question.getCategoryquestionid(),question.getQuestionpartid()});
	}
	
	public int editItem(question question) {
		String sql="update question set audio=?,image=?, paragraph=?, question=?,option1=?,option2=?,option3=?,option4=?,correctquestion=?,questionppartid=?,leveldifficult=? where questionid = ? ";
		return jdbcTemplate.update(sql,new Object[]{question.getAudio(), question.getImage(), question.getParagraph(),question.getQuestion(), question.getOption1(),question.getOption2(),question.getOption3(),question.getOption4(),question.getCorrectquestion(),question.getQuestionpartid(),question.getLeveldifficult(),question.getQuestionid()});
	}

	public int delItem(int questionid){
		String sql="Delete from question where questionid=? ";
		return jdbcTemplate.update(sql,new Object[]{questionid});
	}
	
	public List<question> getItembyLevelandCategory(int lv, int categoryquestionid, int part){
		String sql="select * from question where leveldifficult=? and categoryquestionid=? and questionpartid = ?";
		return jdbcTemplate.query(sql, new Object[]{lv,categoryquestionid,part}, new BeanPropertyRowMapper<question>(question.class));
	}
	
	public List<question> searchQuestionByID(String questionid){
		String sql= "select * from question where questionid like ?";
		return jdbcTemplate.query(sql,new Object []{"%"+questionid+"%"}, new BeanPropertyRowMapper<question>(question.class));
	
	}
}
