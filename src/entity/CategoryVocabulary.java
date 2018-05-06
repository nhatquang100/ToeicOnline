package entity;


public class CategoryVocabulary {
	private String id;
	private String categoryVocabularyName;
	private String categoryVocabularyImage;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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
	
	public CategoryVocabulary(String id, String categoryVocabularyName,
			String categoryVocabularyImage) {
		super();
		this.id = id;
		this.categoryVocabularyName = categoryVocabularyName;
		this.categoryVocabularyImage = categoryVocabularyImage;
	}

	@Override
	public String toString() {
		return "categoryvocaburaly [id=" + id + ", categoryVocabularyName=" + categoryVocabularyName
				+ ", categoryVocabularyImage=" + categoryVocabularyImage + "]";
	}

	public CategoryVocabulary() {
		super();
	}

}
