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
public class ExaminationDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<examination> getAllItems(){
		String sql="select * from examination where isactive = 1";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<examination>(examination.class));
	}
	
	public List<examination> getAllItemsbycategory(int id){
		String sql="select * from examination where isactive = 1 and categoryexamination = ?";
		return jdbcTemplate.query(sql,new Object[]{id}, new BeanPropertyRowMapper<examination>(examination.class));
	}
	
	public examination getItembyID(int id){
		String sql="SELECT * from examination where isactive = 1 and examinationid = ?";
		return jdbcTemplate.queryForObject(sql,new Object[]{id}, new BeanPropertyRowMapper<examination>(examination.class));
	}
	
	public int addItem(examination obj){
		String sql="insert into examination(image,datecreate,categoryexamination,leveldifficult,nameexamination,isactive) values(?,?,?,?,?,?)";
		return jdbcTemplate.update(sql,new Object[]{obj.getImage(),obj.getDatecreate(),obj.getCategoryexamination(),obj.getLeveldifficult(),obj.getNameexamination(),obj.getIsactive()});
	}
	
	public examination getNewItem(){
		String sql="SELECT * from examination where isactive = 1 order by examinationid DESC LIMIT 1";
		return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<examination>(examination.class));
	}

	
	public List<examination> getExaminationListenLimit(){
		String sql="select * from examination where isactive = 1 and categoryexamination = 1 order by examinationid DESC LIMIT 4";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<examination>(examination.class));
	}
	
	public List<examination> getExaminationReadingLimit(){
		String sql="select * from examination where isactive = 1 and categoryexamination = 2 order by examinationid DESC LIMIT 4";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<examination>(examination.class));
	}
	
	public List<examination> getExaminationSumaryLimit(){
		String sql="select * from examination where isactive = 1 and categoryexamination = 3 order by examinationid DESC LIMIT 4";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<examination>(examination.class));
	}
	
	public int countItem() {
		String sql = "SELECT COUNT(*) AS countExaamination FROM examination ";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	
	public List<examination> getItems(int offset){
		String sql="select * from examination ORDER BY examinationid ASC LIMIT ?, ?";
		return jdbcTemplate.query(sql, new Object[]{offset, Defines.ROW_COUNT}, new BeanPropertyRowMapper<examination>(examination.class));
	}
	
	public int updateStatus(int id, int isactive) {
		return jdbcTemplate.update("update examination set isactive = ? where examinationid = ?", new Object[] { isactive, id });
	}
	
	public List<examination> getExaminationByName(String examinationname){
		String sql= "select * from examination where nameexamination like ?";
		return jdbcTemplate.query(sql,new Object []{"%"+examinationname+"%"}, new BeanPropertyRowMapper<examination>(examination.class));
	
	}
}
