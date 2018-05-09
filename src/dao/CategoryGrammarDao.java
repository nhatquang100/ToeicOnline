package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import constant.Defines;
import entity.CategoryVocabulary;
import entity.categorygrammar;

@Repository
public class CategoryGrammarDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	//@Autowired
	//@Qualifier("sessionFactory")

	public List<categorygrammar> getAll(){
		String sql = "SELECT * from categorygrammar ";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<categorygrammar>(categorygrammar.class));
	}
	public int countItem() {
		String sql = "SELECT COUNT(*) AS countcategorygrammar FROM categorygrammar ";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	public List<categorygrammar> getAlls (int offset){
		String sql = "SELECT * from categorygrammar ORDER BY categorygrammarid ASC LIMIT ?, ?";
		return jdbcTemplate.query(sql, new Object[]{offset, Defines.ROW_COUNT}, new BeanPropertyRowMapper<categorygrammar>(categorygrammar.class));
	}
	public categorygrammar getItem(String categorygrammarid) {
		String sql = "SELECT * FROM categorygrammar WHERE categorygrammarid = ?";
		return jdbcTemplate.queryForObject(sql,new Object []{categorygrammarid}, new BeanPropertyRowMapper<categorygrammar>(categorygrammar.class));
	}

	public int addVoca(categorygrammar categorygrammar) {
		String sql="insert into categorygrammar(categorygrammarname) values(?) ";
		return jdbcTemplate.update(sql,new Object[]{categorygrammar.getCategorygrammarname()});
	}
	
	public int editItem(categorygrammar categorygrammar) {
		String sql="update categorygrammar set categorygrammarname=?  where categorygrammarid = ? ";
		return jdbcTemplate.update(sql,new Object[]{categorygrammar.getCategorygrammarname(),categorygrammar.getCategorygrammarid()});
	}

	public int delItem(String categorygrammarid){
		String sql="Delete from categorygrammar where categorygrammarid=? ";
		return jdbcTemplate.update(sql,new Object[]{categorygrammarid});
	}
	
	public List<categorygrammar> getcategorygrammarLimit(){
		String sql="select * from categorygrammar LIMIT 4";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<categorygrammar>(categorygrammar.class));
	}
	
	public List<categorygrammar> getItemByName(String categorygrammarname) {
		String sql = "SELECT * FROM categorygrammar where categorygrammarname like ?";
		return jdbcTemplate.query(sql,new Object []{"%"+categorygrammarname+"%"}, new BeanPropertyRowMapper<categorygrammar>(categorygrammar.class));
	}
}
