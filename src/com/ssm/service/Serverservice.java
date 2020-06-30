package com.ssm.service;

import java.util.List;

import com.ssm.pojo.Category;

public interface Serverservice {
	Category findCategory(String category);
	
	int addNewgoodsCate( String category);
	
	List<Category> findAllCategories();
	
    Category findCategoryById(Integer categoryId);
	
	int updateCategoryById(Category category);
	
	int delCategoryById(Integer categoryId);
}
