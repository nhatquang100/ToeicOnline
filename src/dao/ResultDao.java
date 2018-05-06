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
import entity.result;

@Repository
public class ResultDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public int addItem(result result) {
		String sql="insert into result(memberid,examinationid,choseofmember) values(?,?,?) ";
		return jdbcTemplate.update(sql,new Object[]{result.getMemberid(),result.getExaminationid(),result.getChoseofmember()});
	}
	
	public result getNewItem(){
		String sql="SELECT * from result order by resultid DESC LIMIT 1";
		return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<result>(result.class));
	}
	
	public result getItembyID(int resultid){
		String sql="SELECT * from result where resultid = ?";
		return jdbcTemplate.queryForObject(sql,new Object[]{resultid},new BeanPropertyRowMapper<result>(result.class));
	}
}
