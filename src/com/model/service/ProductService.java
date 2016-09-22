package com.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.model.entity.Product;

public class ProductService {

	public ProductService() {
		
	}
	
	//get info of product
	public List<Product> getAllProduct() {
		List<Product> listAllProduct = new ArrayList<>();
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("wine_shop");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		Query query = entityManager.createQuery("select p from Product p");
		listAllProduct = query.getResultList();
		entityManager.close();
		entityManagerFactory.close();
		return listAllProduct; 
	}
	
	public List<Product> getProductByCatetory(int categoryId) {
		List<Product> listProduct = new ArrayList<>();
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("wine_shop");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		Query query = entityManager.createQuery("select p from Product p where p.productCategoryId = " + categoryId);
		listProduct = query.getResultList();
		entityManager.close();
		entityManagerFactory.close();
		return listProduct;
	}
	public Product getProductById(int pId) {
		Product product = new Product();
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("wine_shop");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		Query query = entityManager.createQuery("select p from Product p where p.productId = " + pId);
		List<Product> list = query.getResultList();
		entityManager.close();
		entityManagerFactory.close();
		if (list.size() != 0) {
			return list.get(0);
		}
		return product;
	}
	
	public  List<Product> getProductByKeyword(String keywork) {
		List<Product> listProduct = new ArrayList<>();
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("wine_shop");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		Query query = entityManager.createQuery("select p from Product p where p.productName like '%" + keywork +"%'");
		listProduct = query.getResultList();
		entityManager.close();
		entityManagerFactory.close();
		return listProduct;
	}
	//insert new product
	
	public void addProduct(Product p) {
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("wine_shop");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		entityManager.persist(p);
		entityManager.getTransaction().commit();
		entityManager.close();
		entityManagerFactory.close();
	}
	//delete product
	public void deleteProduct(Product p) {
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("wine_shop");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		entityManager.remove(p);
		entityManager.getTransaction().commit();
		entityManager.close();
		entityManagerFactory.close();
	}
}
