package entity;

import java.sql.Timestamp;

public class examination {
	private int examinationid;
	private Timestamp datecreate;
	private String nameexamination;
	private int leveldifficult;
	private String image;
	private int categoryexamination;
	
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

	public examination(int examinationid, Timestamp datecreate,
			String nameexamination, int leveldifficult, String image,
			int categoryexamination) {
		super();
		this.examinationid = examinationid;
		this.datecreate = datecreate;
		this.nameexamination = nameexamination;
		this.leveldifficult = leveldifficult;
		this.image = image;
		this.categoryexamination = categoryexamination;
	}
	public int getCategoryexamination() {
		return categoryexamination;
	}
	public void setCategoryexamination(int categoryexamination) {
		this.categoryexamination = categoryexamination;
	}
	public int getLeveldifficult() {
		return leveldifficult;
	}
	public void setLeveldifficult(int leveldifficult) {
		this.leveldifficult = leveldifficult;
	}
	public int getExaminationid() {
		return examinationid;
	}
	public void setExaminationid(int examinationid) {
		this.examinationid = examinationid;
	}
	public Timestamp getDatecreate() {
		return datecreate;
	}
	public void setDatecreate(Timestamp datecreate) {
		this.datecreate = datecreate;
	}
	public String getNameexamination() {
		return nameexamination;
	}
	public void setNameexamination(String nameexamination) {
		this.nameexamination = nameexamination;
	}
	public examination(int examinationid, Timestamp datecreate,
			String nameexamination) {
		super();
		this.examinationid = examinationid;
		this.datecreate = datecreate;
		this.nameexamination = nameexamination;
	}
	public examination() {
		super();
	}
	
	
}
