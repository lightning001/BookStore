package entity;
// Generated May 22, 2017 7:24:23 PM by Hibernate Tools 5.2.3.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Category generated by hbm2java
 */
public class Category implements java.io.Serializable {

	private static final long serialVersionUID = 6171489787695538843L;
	private Integer categoryId;
	private String categoryName;
	private String slug;
	private String decription;
	private Set<Book> books = new HashSet<Book>(0);

	public Category() {
	}

	public Category(String slug) {
		this.slug = slug;
	}

	public Category(String categoryName, String slug, String decription) {
		super();
		this.categoryName = categoryName;
		this.slug = slug;
		this.decription = decription;
	}

	public Category(Integer categoryId, String categoryName, String slug, String decription, Set<Book> books) {
		super();
		this.categoryId = categoryId;
		this.categoryName = categoryName;
		this.slug = slug;
		this.decription = decription;
		this.books = books;
	}

	public Category(String categoryName, String slug, String decription, Set<Book> books) {
		this.categoryName = categoryName;
		this.slug = slug;
		this.decription = decription;
		this.books = books;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getSlug() {
		return slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

	public String getDecription() {
		return decription;
	}

	public void setDecription(String decription) {
		this.decription = decription;
	}

	public Set<Book> getBooks() {
		return books;
	}

	public void setBooks(Set<Book> books) {
		this.books = books;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Category [categoryId=");
		builder.append(categoryId);
		builder.append(", categoryName=");
		builder.append(categoryName);
		builder.append(", slug=");
		builder.append(slug);
		builder.append(", decription=");
		builder.append(decription);
		builder.append("]");
		return builder.toString();
	}

}
