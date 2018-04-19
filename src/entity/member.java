package entity;

public class member {
	private int memberid;
	private String membername;
	private String avatar;
	private String username;
	private String password;
	private String email;
	private String phonenumber;
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
	
	public member(int memberid, String membername, String avatar,
			String username, String password, String email, String phonenumber,
			int isactive, int categorymemberid, String categorymembername) {
		super();
		this.memberid = memberid;
		this.membername = membername;
		this.avatar = avatar;
		this.username = username;
		this.password = password;
		this.email = email;
		this.phonenumber = phonenumber;
		this.isactive = isactive;
		this.categorymemberid = categorymemberid;
		this.categorymembername = categorymembername;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
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