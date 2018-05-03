package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entity.examination;
import entity.question;

@Repository
public class ExaminationDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<examination> getAllItems(){
		String sql="select * from examination";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<examination>(examination.class));
	}
	
	public List<examination> getAllItemsbycategory(int id){
		String sql="select * from examination where categoryexamination = ?";
		return jdbcTemplate.query(sql,new Object[]{id}, new BeanPropertyRowMapper<examination>(examination.class));
	}
	
	public examination getItembyID(int id){
		String sql="SELECT * from examination where examinationid = ?";
		return jdbcTemplate.queryForObject(sql,new Object[]{id}, new BeanPropertyRowMapper<examination>(examination.class));
	}
	
	public int addItem(examination obj){
		String sql="insert into examination(nameexamination,image,datecreate,categoryexamination,leveldifficult,nameexamination) values(?,?,?,?,?,?)";
		return jdbcTemplate.update(sql,new Object[]{obj.getNameexamination(),obj.getImage(),obj.getDatecreate(),obj.getCategoryexamination(),obj.getLeveldifficult(),obj.getNameexamination()});
	}
	
	public examination getNewItem(){
		String sql="SELECT * from examination order by examinationid DESC LIMIT 1";
		return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<examination>(examination.class));
	}

	
	public List<examination> getExaminationListenLimit(){
		String sql="select * from examination where categoryexamination = 1 LIMIT 4";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<examination>(examination.class));
	}
	
	public List<examination> getExaminationReadingLimit(){
		String sql="select * from examination where categoryexamination = 2 LIMIT 4";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<examination>(examination.class));
	}
	
	public List<examination> getExaminationSumaryLimit(){
		String sql="select * from examination where categoryexamination = 3 LIMIT 4";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<examination>(examination.class));
	}
}
