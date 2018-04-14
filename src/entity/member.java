package entity;

public class member {
	private int memberid;
	private String membername;
	private String username;
	private String password;
	private int isactive;
	private int categorymemberid;
	private String categorymembername;
	public member(int memberid, String membername, String username,
			String password, int isactive, int categorymemberid,
			String categorymembername) {
		super();
		this.memberid = memberid;
		this.membername = membername;
		this.username = username;
		this.password = password;
		this.isactive = isactive;
		this.categorymemberid = categorymemberid;
		this.categorymembername = categorymembername;
	}
	public member() {
		super();
	}
	public int getMemberid() {
		return memberid;
	}
	public void setMemberid(int memberid) {
		this.memberid = memberid;
	}
	public String getMembername() {
		return membername;
	}
	public void setMembername(String membername) {
		this.membername = membername;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getIsactive() {
		return isactive;
	}
	public void setIsactive(int isactive) {
		this.isactive = isactive;
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