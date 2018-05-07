package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entity.contact;
import entity.member;

@Repository
public class ContactDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public int addItem(contact contact){
		String sql="insert into contact(contacttitles,content,datecreate,frommail) values(?,?,?,?)";
		return jdbcTemplate.update(sql,new Object[]{contact.getContacttitles(),contact.getContent(),contact.getDatecreate(),contact.getFrommail()});
	}
	
	public int delItem(int contactid){
		String sql="Delete from contact where contactid=? ";
		return jdbcTemplate.update(sql,new Object[]{contactid});
	}
	public List<contact> getItems(){
		String sql="select * from contact";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<contact>(contact.class));
	}
}	
