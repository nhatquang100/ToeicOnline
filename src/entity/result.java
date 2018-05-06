package entity;

public class result {
	private int resultid;
	private int memberid;
	private int examinationid;
	private String choseofmember;
	public int getResultid() {
		return resultid;
	}
	public void setResultid(int resultid) {
		this.resultid = resultid;
	}
	public int getMemberid() {
		return memberid;
	}
	public void setMemberid(int memberid) {
		this.memberid = memberid;
	}
	public int getExaminationid() {
		return examinationid;
	}
	public void setExaminationid(int examinationid) {
		this.examinationid = examinationid;
	}
	public String getChoseofmember() {
		return choseofmember;
	}
	public void setChoseofmember(String choseofmember) {
		this.choseofmember = choseofmember;
	}
	public result(int resultid, int memberid, int examinationid,
			String choseofmember) {
		super();
		this.resultid = resultid;
		this.memberid = memberid;
		this.examinationid = examinationid;
		this.choseofmember = choseofmember;
	}
	public result() {
		super();
	}
	
	
}
