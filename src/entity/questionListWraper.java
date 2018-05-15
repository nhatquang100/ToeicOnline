package entity;

import java.util.List;

public class questionListWraper {
	private List<questionexam> 	questionlist;
	private int categoryexaminationid;

	public questionListWraper(List<questionexam> questionlist,
			int categoryexaminationid) {
		super();
		this.questionlist = questionlist;
		this.categoryexaminationid = categoryexaminationid;
	}

	public int getCategoryexaminationid() {
		return categoryexaminationid;
	}

	public void setCategoryexaminationid(int categoryexaminationid) {
		this.categoryexaminationid = categoryexaminationid;
	}

	public List<questionexam> getQuestionlist() {
		return questionlist;
	}

	public void setQuestionlist(List<questionexam> questionlist) {
		this.questionlist = questionlist;
	}

	public questionListWraper() {
		super();
	}
	
	
}
