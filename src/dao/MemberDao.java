package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import constant.Defines;
import entity.member;

@Repository
public class MemberDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public member checklogin(String username, String password){
		String sql = "select * from member where username =? and password =? and isactive =1 ";
		return jdbcTemplate.queryForObject(sql, new Object []{username,password}, new BeanPropertyRowMapper<member>(member.class));
	}
	
	public List<member> getAllItems(){
		String sql="select * from member";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<member>(member.class));
	}
	
	public List<member> getItems(int offset) {
		String sql = "SELECT memberid, membername, username, password, isactive, a.categorymemberid AS categorymemberid, b.categorymembername AS categorymembername FROM member AS a INNER JOIN categorymember AS b ON a.categorymemberid = b.categorymemberid ORDER BY memberid ASC LIMIT ?, ?";
		return jdbcTemplate.query(sql, new Object[]{offset, Defines.ROW_COUNT}, new BeanPropertyRowMapper<member>(member.class));	
	}
	
	public List<member> getItems(){
		String sql="select * from member where isactive = 1 ";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<member>(member.class));
	}
	
	public int countItem() {
		String sql = "SELECT COUNT(*) AS countMember FROM member ";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	
	public int addItem(member member){
		String sql="insert into member(membername,username,password,isactive,categorymemberid,avatar,email,phonenumber) values(?,?,?,1,?,?,?,?)";
		return jdbcTemplate.update(sql,new Object[]{member.getMembername(),member.getUsername(),member.getPassword(),member.getCategorymemberid(),member.getAvatar(),member.getEmail(),member.getPhonenumber()});
	}
	
	public int updateStatus(int id, int isactive) {
		return jdbcTemplate.update("update member set isactive = ? where memberid = ?", new Object[] { isactive, id });
	}
	
	public member getItem(int memberid) {
		String sql = "SELECT * FROM member WHERE memberid = ?";
		return jdbcTemplate.queryForObject(sql,new Object []{memberid}, new BeanPropertyRowMapper<member>(member.class));
	}
	
	public int editItem(member member) {
		String sql="update member set membername=?,password=?, categorymemberid=?,avatar=?,email=?,phonenumber=?  where memberid=? ";
		return jdbcTemplate.update(sql,new Object[]{member.getMembername(),member.getPassword(),member.getCategorymemberid(),member.getAvatar(),member.getEmail(),member.getPhonenumber(),member.getMemberid()});
	}

	public int delItem(int memberid){
		String sql="Delete from member where memberid=? ";
		return jdbcTemplate.update(sql,new Object[]{memberid});
	}
	
	public member getMemberbyUsername(String username){
		String sql= "select * from member where username=?";
		return jdbcTemplate.queryForObject(sql,new Object []{username}, new BeanPropertyRowMapper<member>(member.class));
	}
	
}
