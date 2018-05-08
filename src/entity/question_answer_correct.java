package entity;

public class question_answer_correct {
	private int questionid;
	private String image;
	private String audio;
	private String paragraph;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String chose;
	private String correct;
	private int categoryquestionid;
	private String question;
	public int getQuestionid() {
		return questionid;
	}
	public void setQuestionid(int questionid) {
		this.questionid = questionid;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getAudio() {
		return audio;
	}
	public void setAudio(String audio) {
		this.audio = audio;
	}
	public String getParagraph() {
		return paragraph;
	}
	public void setParagraph(String paragraph) {
		this.paragraph = paragraph;
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
	public String getChose() {
		return chose;
	}
	public void setChose(String chose) {
		this.chose = chose;
	}
	public String getCorrect() {
		return correct;
	}
	public void setCorrect(String correct) {
		this.correct = correct;
	}
	public int getCategoryquestionid() {
		return categoryquestionid;
	}
	public void setCategoryquestionid(int categoryquestionid) {
		this.categoryquestionid = categoryquestionid;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public question_answer_correct(int questionid, String image, String audio,
			String paragraph, String option1, String option2, String option3,
			String option4, String chose, String correct,
			int categoryquestionid, String question) {
		super();
		this.questionid = questionid;
		this.image = image;
		this.audio = audio;
		this.paragraph = paragraph;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.chose = chose;
		this.correct = correct;
		this.categoryquestionid = categoryquestionid;
		this.question = question;
	}
	public question_answer_correct() {
		super();
	}
	
	
	
}
