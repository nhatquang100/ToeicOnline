package entity;


public class CategoryVocaburaly {
	private String id;
	private String categoryVocaburalyName;
	private String categoryVocaburalyImage;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCategoryVocaburalyName() {
		return categoryVocaburalyName;
	}
	public void setCategoryVocaburalyName(String categoryVocaburalyName) {
		this.categoryVocaburalyName = categoryVocaburalyName;
	}
	public String getCategoryVocaburalyImage() {
		return categoryVocaburalyImage;
	}
	public void setCategoryVocaburalyImage(String categoryVocaburalyImage) {
		this.categoryVocaburalyImage = categoryVocaburalyImage;
	}
	
	public CategoryVocaburaly() {
		super();
	}
	public CategoryVocaburaly(String id, String categoryVocaburalyName,
			String categoryVocaburalyImage) {
		super();
		this.id = id;
		this.categoryVocaburalyName = categoryVocaburalyName;
		this.categoryVocaburalyImage = categoryVocaburalyImage;
	}
	@Override
	public String toString() {
		return "categoryvocaburaly [id=" + id + ", categoryVocaburalyName=" + categoryVocaburalyName
				+ ", categoryVocaburalyImage=" + categoryVocaburalyImage + "]";
	}
	
	
	

}
