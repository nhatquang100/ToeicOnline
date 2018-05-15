package entity;

import java.util.List;

public class resultListWraper {
	private List<question_answer_correct> qac;
	private int categoryexaminationid;
	
	public resultListWraper(List<question_answer_correct> qac,
			int categoryexaminationid) {
		super();
		this.qac = qac;
		this.categoryexaminationid = categoryexaminationid;
	}

	public List<question_answer_correct> getQac() {
		return qac;
	}

	public void setQac(List<question_answer_correct> qac) {
		this.qac = qac;
	}

	public int getCategoryexaminationid() {
		return categoryexaminationid;
	}

	public void setCategoryexaminationid(int categoryexaminationid) {
		this.categoryexaminationid = categoryexaminationid;
	}

	public resultListWraper() {
		super();
	}
	
	
}
