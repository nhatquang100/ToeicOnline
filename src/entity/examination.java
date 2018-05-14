package entity;

import java.sql.Timestamp;

public class examination {
	private int examinationid;
	private Timestamp datecreate;
	private String nameexamination;
	private int leveldifficult;
	private String image;
	private int categoryexamination;
	private int isactive;
	
	
	
	public examination(int examinationid, Timestamp datecreate,
			String nameexamination, int leveldifficult, String image,
			int categoryexamination, int isactive) {
		super();
		this.examinationid = examinationid;
		this.datecreate = datecreate;
		this.nameexamination = nameexamination;
		this.leveldifficult = leveldifficult;
		this.image = image;
		this.categoryexamination = categoryexamination;
		this.isactive = isactive;
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



	public int getLeveldifficult() {
		return leveldifficult;
	}



	public void setLeveldifficult(int leveldifficult) {
		this.leveldifficult = leveldifficult;
	}



	public String getImage() {
		return image;
	}



	public void setImage(String image) {
		this.image = image;
	}



	public int getCategoryexamination() {
		return categoryexamination;
	}



	public void setCategoryexamination(int categoryexamination) {
		this.categoryexamination = categoryexamination;
	}



	public int getIsactive() {
		return isactive;
	}



	public void setIsactive(int isactive) {
		this.isactive = isactive;
	}



	public examination() {
		super();
	}
	
	
}
