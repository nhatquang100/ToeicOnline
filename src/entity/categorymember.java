package entity;

public class categorymember {
	private int categorymemberid;
	private String categorymembername;
	public categorymember(int categorymemberid, String categorymembername) {
		super();
		this.categorymemberid = categorymemberid;
		this.categorymembername = categorymembername;
	}
	public categorymember() {
		super();
	}
	public int getCategorymemberid() {
		return categorymemberid;
	}
	public void setCategorymemberid(int categorymemberid) {
		this.categorymemberid = categorymemberid;
	}
	public String getCategorymembername() {
		return categorymembername;
	}
	public void setCategorymembername(String categorymembername) {
		this.categorymembername = categorymembername;
	}
	
	
}
