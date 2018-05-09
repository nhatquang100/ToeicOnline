package entity;


public class CategoryVocabulary {
	private String categoryvocabularyid;
	private String categoryVocabularyName;
	private String categoryVocabularyImage;
	
	

	public String getCategoryvocabularyid() {
		return categoryvocabularyid;
	}



	public void setCategoryvocabularyid(String categoryvocabularyid) {
		this.categoryvocabularyid = categoryvocabularyid;
	}



	public String getCategoryVocabularyName() {
		return categoryVocabularyName;
	}



	public void setCategoryVocabularyName(String categoryVocabularyName) {
		this.categoryVocabularyName = categoryVocabularyName;
	}



	public String getCategoryVocabularyImage() {
		return categoryVocabularyImage;
	}



	public void setCategoryVocabularyImage(String categoryVocabularyImage) {
		this.categoryVocabularyImage = categoryVocabularyImage;
	}



	public CategoryVocabulary(String categoryvocabularyid,
			String categoryVocabularyName, String categoryVocabularyImage) {
		super();
		this.categoryvocabularyid = categoryvocabularyid;
		this.categoryVocabularyName = categoryVocabularyName;
		this.categoryVocabularyImage = categoryVocabularyImage;
	}



	public CategoryVocabulary() {
		super();
	}

}
