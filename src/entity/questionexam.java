package entity;

public class questionexam {
	private int questionid;
	private String audio;
	private String image;
	private String paragraph;
	private String question;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String correctquestion;
	private int leveldifficult;
	private int isactive;
	private int categoryquestionid;
	private String categoryquestionname;
	private String chose;
	private int examinationid;
	public int getQuestionid() {
		return questionid;
	}
	public void setQuestionid(int questionid) {
		this.questionid = questionid;
	}
	public String getAudio() {
		return audio;
	}
	public void setAudio(String audio) {
		this.audio = audio;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getParagraph() {
		return paragraph;
	}
	public void setParagraph(String paragraph) {
		this.paragraph = paragraph;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getOption1() {
		return option1;
	}
	public void setOption1(String option1) {
		this.option1 = option1;
	}
	public String getOption2() {
		return option2;
	}
	public void setOption2(String option2) {
		this.option2 = option2;
	}
	public String getOption3() {
		return option3;
	}
	public void setOption3(String option3) {
		this.option3 = option3;
	}
	public String getOption4() {
		return option4;
	}
	public void setOption4(String option4) {
		this.option4 = option4;
	}
	public String getCorrectquestion() {
		return correctquestion;
	}
	public void setCorrectquestion(String correctquestion) {
		this.correctquestion = correctquestion;
	}
	public int getLeveldifficult() {
		return leveldifficult;
	}
	public void setLeveldifficult(int leveldifficult) {
		this.leveldifficult = leveldifficult;
	}
	public int getIsactive() {
		return isactive;
	}
	public void setIsactive(int isactive) {
		this.isactive = isactive;
	}
	public int getCategoryquestionid() {
		return categoryquestionid;
	}
	public void setCategoryquestionid(int categoryquestionid) {
		this.categoryquestionid = categoryquestionid;
	}
	public String getCategoryquestionname() {
		return categoryquestionname;
	}
	public void setCategoryquestionname(String categoryquestionname) {
		this.categoryquestionname = categoryquestionname;
	}
	public String getChose() {
		return chose;
	}
	public void setChose(String chose) {
		this.chose = chose;
	}
	public int getExaminationid() {
		return examinationid;
	}
	public void setExaminationid(int examinationid) {
		this.examinationid = examinationid;
	}
	public questionexam(int questionid, String audio, String image,
			String paragraph, String question, String option1, String option2,
			String option3, String option4, String correctquestion,
			int leveldifficult, int isactive, int categoryquestionid,
			String categoryquestionname, String chose, int examinationid) {
		super();
		this.questionid = questionid;
		this.audio = audio;
		this.image = image;
		this.paragraph = paragraph;
		this.question = question;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.correctquestion = correctquestion;
		this.leveldifficult = leveldifficult;
		this.isactive = isactive;
		this.categoryquestionid = categoryquestionid;
		this.categoryquestionname = categoryquestionname;
		this.chose = chose;
		this.examinationid = examinationid;
	}
	public questionexam() {
		super();
	}
	
	
}
