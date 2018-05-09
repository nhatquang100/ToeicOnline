package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import constant.Defines;
import entity.Vocabulary;
import entity.member;

@Repository
public class VocaburalysDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Vocabulary> getAlls (int offset){
		String sql = "SELECT * from vocabulary ORDER BY vocabularyid ASC LIMIT ?, ?";
		return jdbcTemplate.query(sql, new Object[]{offset, Defines.ROW_COUNT}, new BeanPropertyRowMapper<Vocabulary>(Vocabulary.class));
	}
	
	public int countItem() {
		String sql = "SELECT COUNT(*) AS countVocaburaly FROM vocabulary ";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	
	public List<Vocabulary> getItems(){
		String sql="select * from vocabulary";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Vocabulary>(Vocabulary.class));
	}
	public Vocabulary getItemById(String vocabularyid) {
		String sql = "SELECT * FROM vocabulary WHERE vocabularyid = ?";
		return jdbcTemplate.queryForObject(sql,new Object []{vocabularyid}, new BeanPropertyRowMapper<Vocabulary>(Vocabulary.class));
	}

	public List<Vocabulary> getItem(String categoryvocabularyid) {
		String sql = "SELECT * FROM vocabulary WHERE categoryvocabularyid = ?";
		return jdbcTemplate.query(sql,new Object []{categoryvocabularyid}, new BeanPropertyRowMapper<Vocabulary>(Vocabulary.class));
	}
	
	public int addItem(Vocabulary vocabulary) {
		String sql="insert into vocabulary(vocabularyname,spelling, vocabularymean, categoryvocabularyid) values(?,?,?,?) ";
		return jdbcTemplate.update(sql,new Object[]{vocabulary.getVocabularyname(), vocabulary.getSpelling(), vocabulary.getVocabularymean(), vocabulary.getCategoryvocabularyid()});
	}
	
	public int editItem(Vocabulary vocabulary) {
		String sql="update vocabulary set vocabularyname=?,spelling=?, vocabularymean=?, categoryvocabularyid=? where vocabularyid = ? ";
		return jdbcTemplate.update(sql,new Object[]{vocabulary.getVocabularyname(), vocabulary.getSpelling(), vocabulary.getVocabularymean(), vocabulary.getCategoryvocabularyid(), vocabulary.getVocabularyid()});
	}

	public int delItem(String vocabularyId){
		String sql="Delete from vocabulary where vocabularyid=? ";
		return jdbcTemplate.update(sql,new Object[]{vocabularyId});
	}
	
	public List<Vocabulary> getItemByIdCategory(int categoryvocabularyid) {
		String sql = "SELECT * FROM vocabulary WHERE categoryvocabularyid = ?";
		return jdbcTemplate.query(sql,new Object []{categoryvocabularyid}, new BeanPropertyRowMapper<Vocabulary>(Vocabulary.class));
	}
	
	public List<Vocabulary> getItemByName(String vocabularyname) {
		String sql = "SELECT * FROM vocabulary where vocabularyname like ?";
		return jdbcTemplate.query(sql,new Object []{"%"+vocabularyname+"%"}, new BeanPropertyRowMapper<Vocabulary>(Vocabulary.class));
	}
}
