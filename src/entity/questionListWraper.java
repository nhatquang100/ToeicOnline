package entity;

import java.util.List;

public class questionListWraper {
	private List<questionexam> 	questionlist;

	public questionListWraper(List<questionexam> questionlist) {
		super();
		this.questionlist = questionlist;
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
