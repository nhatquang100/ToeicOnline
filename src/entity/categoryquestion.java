package entity;

public class categoryquestion {
	private int categoryquestionid;
	private String categoryquestionname;
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
	public categoryquestion(int categoryquestionid, String categoryquestionname) {
		super();
		this.categoryquestionid = categoryquestionid;
		this.categoryquestionname = categoryquestionname;
	}
	public categoryquestion() {
		super();
	}
	
	
}
