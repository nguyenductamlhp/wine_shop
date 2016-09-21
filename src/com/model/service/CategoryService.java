package com.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.model.entity.Category;

public class CategoryService {

	public CategoryService() {
		
	}

	public List<Category> getAllCategory() {
		List<Category> listAllCategory = new ArrayList<>();
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("wine_shop");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		Query query = entityManager.createQuery("select c from Category c");
		entityManager.close();
		entityManagerFactory.close();
		return listAllCategory;
	}

}
