package entity;

import java.sql.Timestamp;

public class contact {
	private int contactid;
	private String contacttitles;
	private String content;
	private Timestamp datecreate;
	private String frommail;
	
	
	
	public contact(int contactid, String contacttitles, String content,
			Timestamp datecreate, String frommail) {
		super();
		this.contactid = contactid;
		this.contacttitles = contacttitles;
		this.content = content;
		this.datecreate = datecreate;
		this.frommail = frommail;
	}



	public int getContactid() {
		return contactid;
	}



	public void setContactid(int contactid) {
		this.contactid = contactid;
	}



	public String getContacttitles() {
		return contacttitles;
	}



	public void setContacttitles(String contacttitles) {
		this.contacttitles = contacttitles;
	}



	public String getContent() {
		return content;
	}



	public void setContent(String content) {
		this.content = content;
	}



	public Timestamp getDatecreate() {
		return datecreate;
	}



	public void setDatecreate(Timestamp datecreate) {
		this.datecreate = datecreate;
	}



	public String getFrommail() {
		return frommail;
	}



	public void setFrommail(String frommail) {
		this.frommail = frommail;
	}



	public contact() {
		super();
	}
	
	
}
