package entity;

public class categorygrammar {
	private String categorygrammarid;
	private String categorygrammarname;
	public categorygrammar(String categorygrammarid, String categorygrammarname) {
		super();
		this.categorygrammarid = categorygrammarid;
		this.categorygrammarname = categorygrammarname;
	}
	public String getCategorygrammarid() {
		return categorygrammarid;
	}
	public void setCategorygrammarid(String categorygrammarid) {
		this.categorygrammarid = categorygrammarid;
	}
	public String getCategorygrammarname() {
		return categorygrammarname;
	}
	public void setCategorygrammarname(String categorygrammarname) {
		this.categorygrammarname = categorygrammarname;
	}

	public categorygrammar() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "categorygramma [categorygrammarid=" + categorygrammarid + ", categorygrammarname=" + categorygrammarname
				+ "]";
	}
	
	

}
