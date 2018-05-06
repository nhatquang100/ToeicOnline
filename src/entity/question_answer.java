package entity;

public class question_answer {
	private int questionid;
	private String chose;
	public question_answer(int questionid, String chose) {
		super();
		this.questionid = questionid;
		this.chose = chose;
	}
	public question_answer() {
		super();
	}
	public int getQuestionid() {
		return questionid;
	}
	public void setQuestionid(int questionid) {
		this.questionid = questionid;
	}
	public String getChose() {
		return chose;
	}
	public void setChose(String chose) {
		this.chose = chose;
	}
	
	
	
}
