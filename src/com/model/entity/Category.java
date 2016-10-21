package com.model.entity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the category database table.
 * 
 */
@Entity
@NamedQuery(name="Category.findAll", query="SELECT c FROM Category c")
public class Category implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="category_id")
	private int categoryId;

	@Column(name="category_describe")
	private String categoryDescribe;

	@Column(name="category_name")
	private String categoryName;

	@Column(name="category_note")
	private String categoryNote;

	public Category() {
	}

	public int getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryDescribe() {
		return this.categoryDescribe;
	}

	public void setCategoryDescribe(String categoryDescribe) {
		this.categoryDescribe = categoryDescribe;
	}

	public String getCategoryName() {
		return this.categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategoryNote() {
		return this.categoryNote;
	}

	public void setCategoryNote(String categoryNote) {
		this.categoryNote = categoryNote;
	}

}