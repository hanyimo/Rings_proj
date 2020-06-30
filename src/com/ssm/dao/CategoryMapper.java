package com.ssm.dao;
import java.util.List;

import com.ssm.pojo.Category;

public interface CategoryMapper {
	Category findCategory(String category);
	//添加新的商品分类
	int addNewgoodsCate( String category);
	
	List<Category> findAllCategories();
	
    Category findCategoryById(Integer categoryId);
	
	int updateCategoryById(Category category);
	
	int delCategoryById(Integer categoryId);
}
