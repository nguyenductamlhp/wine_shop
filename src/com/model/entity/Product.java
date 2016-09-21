package com.model.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the product database table.
 * 
 */
@Entity
@NamedQuery(name="Product.findAll", query="SELECT p FROM Product p")
public class Product implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="product_id")
	private int productId;

	@Column(name="product_category_id")
	private int productCategoryId;

	@Column(name="product_describe")
	private String productDescribe;

	@Temporal(TemporalType.DATE)
	@Column(name="product_expdate")
	private Date productExpdate;

	@Column(name="product_image")
	private String productImage;

	@Column(name="product_name")
	private String productName;

	@Column(name="product_note")
	private String productNote;

	@Column(name="product_origin")
	private String productOrigin;

	@Column(name="product_price")
	private int productPrice;

	@Temporal(TemporalType.DATE)
	@Column(name="product_prodate")
	private Date productProdate;

	public Product() {
	}

	public int getProductId() {
		return this.productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getProductCategoryId() {
		return this.productCategoryId;
	}

	public void setProductCategoryId(int productCategoryId) {
		this.productCategoryId = productCategoryId;
	}

	public String getProductDescribe() {
		return this.productDescribe;
	}

	public void setProductDescribe(String productDescribe) {
		this.productDescribe = productDescribe;
	}

	public Date getProductExpdate() {
		return this.productExpdate;
	}

	public void setProductExpdate(Date productExpdate) {
		this.productExpdate = productExpdate;
	}

	public String getProductImage() {
		return this.productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}

	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductNote() {
		return this.productNote;
	}

	public void setProductNote(String productNote) {
		this.productNote = productNote;
	}

	public String getProductOrigin() {
		return this.productOrigin;
	}

	public void setProductOrigin(String productOrigin) {
		this.productOrigin = productOrigin;
	}

	public int getProductPrice() {
		return this.productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public Date getProductProdate() {
		return this.productProdate;
	}

	public void setProductProdate(Date productProdate) {
		this.productProdate = productProdate;
	}

}