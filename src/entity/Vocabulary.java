package entity;

public class Vocabulary {
	private String vocabularyid;
	private String vocabularyname;
	private String spelling;
	private String vocabularymean;
	private String categoryvocabularyid;
	public String getVocabularyid() {
		return vocabularyid;
	}
	public void setVocabularyid(String vocabularyid) {
		this.vocabularyid = vocabularyid;
	}
	public String getVocabularyname() {
		return vocabularyname;
	}
	public void setVocabularyname(String vocabularyname) {
		this.vocabularyname = vocabularyname;
	}
	public String getSpelling() {
		return spelling;
	}
	public void setSpelling(String spelling) {
		this.spelling = spelling;
	}
	public String getVocabularymean() {
		return vocabularymean;
	}
	public void setVocabularymean(String vocabularymean) {
		this.vocabularymean = vocabularymean;
	}
	public String getCategoryvocabularyid() {
		return categoryvocabularyid;
	}
	public void setCategoryvocabularyid(String categoryvocabularyid) {
		this.categoryvocabularyid = categoryvocabularyid;
	}
	public Vocabulary() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Vocabulary [vocabularyid=" + vocabularyid + ", vocabularyname=" + vocabularyname + ", spelling="
				+ spelling + ", vocabularymean=" + vocabularymean + ", categoryvocabularyid=" + categoryvocabularyid
				+ "]";
	}
	public Vocabulary(String vocabularyid, String vocabularyname, String spelling, String vocabularymean,
			String categoryvocabularyid) {
		super();
		this.vocabularyid = vocabularyid;
		this.vocabularyname = vocabularyname;
		this.spelling = spelling;
		this.vocabularymean = vocabularymean;
		this.categoryvocabularyid = categoryvocabularyid;
	}
		
	
}
