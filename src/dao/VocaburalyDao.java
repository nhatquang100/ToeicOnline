package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import constant.Defines;
import entity.CategoryVocaburaly;
import entity.Vocabulary;
import entity.examination;
import entity.member;
import entity.question;



@Repository
public class VocaburalyDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	//@Autowired
	//@Qualifier("sessionFactory")

	public List<CategoryVocaburaly> getAll(){
		String sql = "SELECT * from categoryvocabulary ";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<CategoryVocaburaly>(CategoryVocaburaly.class));
	}
	public int countItem() {
		String sql = "SELECT COUNT(*) AS countCategoryVocabulary FROM categoryvocabulary ";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	public List<CategoryVocaburaly> getAlls (int offset){
		String sql = "SELECT * from categoryvocabulary ORDER BY categoryvocabularyid ASC LIMIT ?, ?";
		return jdbcTemplate.query(sql, new Object[]{offset, Defines.ROW_COUNT}, new BeanPropertyRowMapper<CategoryVocaburaly>(CategoryVocaburaly.class));
	}
	public CategoryVocaburaly getItem(String id) {
		String sql = "SELECT * FROM categoryvocabulary WHERE categoryvocabularyid = ?";
		return jdbcTemplate.queryForObject(sql,new Object []{id}, new BeanPropertyRowMapper<CategoryVocaburaly>(CategoryVocaburaly.class));
	}

	public int addVoca(CategoryVocaburaly categoryVocaburaly) {
		String sql="insert into categoryvocabulary(categoryVocaburalyName,categoryVocaburalyImage) values(?,?) ";
		return jdbcTemplate.update(sql,new Object[]{categoryVocaburaly.getCategoryVocaburalyName(), categoryVocaburaly.getCategoryVocaburalyImage()});
	}
	
	public int editItem(CategoryVocaburaly categoryVocaburaly) {
		String sql="update categoryvocabulary set categoryvocaburalyname=?,categoryvocaburalyimage=? where categoryvocabularyid = ? ";
		return jdbcTemplate.update(sql,new Object[]{categoryVocaburaly.getCategoryVocaburalyName(), categoryVocaburaly.getCategoryVocaburalyImage(),categoryVocaburaly.getId()});
	}

	public int delItem(String id){
		String sql="Delete from categoryvocabulary where categoryvocabularyid=? ";
		return jdbcTemplate.update(sql,new Object[]{id});
	}
	
	public List<CategoryVocaburaly> getcategoryvocabularyLimit(){
		String sql="select * from categoryvocabulary LIMIT 4";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<CategoryVocaburaly>(CategoryVocaburaly.class));
	}
}
