package entity;

public class examination_question {
	private int examinationid;
	private int questionid;
	public examination_question(int examinationid, int questionid) {
		super();
		this.examinationid = examinationid;
		this.questionid = questionid;
	}
	public examination_question() {
		super();
	}
	public int getExaminationid() {
		return examinationid;
	}
	public void setExaminationid(int examinationid) {
		this.examinationid = examinationid;
	}
	public int getQuestionid() {
		return questionid;
	}
	public void setQuestionid(int questionid) {
		this.questionid = questionid;
	}
	
	
}
