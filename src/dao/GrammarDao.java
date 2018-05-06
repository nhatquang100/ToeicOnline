package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import constant.Defines;
import entity.grammar;


@Repository
public class GrammarDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<grammar> getAlls (int offset){
		String sql = "SELECT * from grammar ORDER BY vocabularyid ASC LIMIT ?, ?";
		return jdbcTemplate.query(sql, new Object[]{offset, Defines.ROW_COUNT}, new BeanPropertyRowMapper<grammar>(grammar.class));
	}
	
	public int countItem() {
		String sql = "SELECT COUNT(*) AS countGrammar FROM grammar ";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	
	public List<grammar> getItems(){
		String sql="select * from grammar";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<grammar>(grammar.class));
	}
	public grammar getItemById(String grammarid) {
		String sql = "SELECT * FROM grammar WHERE grammarid = ?";
		return jdbcTemplate.queryForObject(sql,new Object []{grammarid}, new BeanPropertyRowMapper<grammar>(grammar.class));
	}

	public List<grammar> getItem(String categorygrammarid) {
		String sql = "SELECT * FROM grammar WHERE categorygrammarid = ?";
		return jdbcTemplate.query(sql,new Object []{categorygrammarid}, new BeanPropertyRowMapper<grammar>(grammar.class));
	}
	
	public int addItem(grammar grammar) {
		String sql="insert into grammar(grammarname, content, example,categorygrammarid ) values(?,?,?,?) ";
		return jdbcTemplate.update(sql,new Object[]{grammar.getGrammarname(), grammar.getContent(),grammar.getExample(), grammar.getCategorygrammarid()});
	}
	
	public int editItem(grammar grammar) {
		String sql="update grammar set grammarname=?, content=?, example=?, categorygrammarid=? where grammarid = ? ";
		return jdbcTemplate.update(sql,new Object[]{grammar.getGrammarname(), grammar.getContent(),grammar.getExample(), grammar.getCategorygrammarid(), grammar.getGrammarid()});
	}

	public int delItem(String grammarid){
		String sql="Delete from grammar where grammarid=? ";
		return jdbcTemplate.update(sql,new Object[]{grammarid});
	}
}
