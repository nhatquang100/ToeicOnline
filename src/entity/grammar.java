package entity;

public class grammar {
	private String grammarid;
	private String grammarname;
	private String content;
	private String example;
	private String categorygrammarid;
	public String getGrammarid() {
		return grammarid;
	}
	public void setGrammarid(String grammarid) {
		this.grammarid = grammarid;
	}
	public String getGrammarname() {
		return grammarname;
	}
	public void setGrammarname(String grammarname) {
		this.grammarname = grammarname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getExample() {
		return example;
	}
	public void setExample(String example) {
		this.example = example;
	}
	public String getCategorygrammarid() {
		return categorygrammarid;
	}
	public void setCategorygrammarid(String categorygrammarid) {
		this.categorygrammarid = categorygrammarid;
	}
	@Override
	public String toString() {
		return "grammar [grammarid=" + grammarid + ", grammarname=" + grammarname + ", content=" + content
				+ ", example=" + example + ", categorygrammarid=" + categorygrammarid + "]";
	}
	public grammar(String grammarid, String grammarname, String content, String example, String categorygrammarid) {
		super();
		this.grammarid = grammarid;
		this.grammarname = grammarname;
		this.content = content;
		this.example = example;
		this.categorygrammarid = categorygrammarid;
	}
	public grammar() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	

}
