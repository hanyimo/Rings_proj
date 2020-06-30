package com.ssm.service.impl;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.dao.CategoryMapper;
import com.ssm.pojo.Category;
import com.ssm.pojo.goods;
import com.ssm.service.Serverservice;

@Service("serverService")
public class ServcerserviceImpl implements Serverservice {
	@Resource
	private CategoryMapper categoryMapper;
	@Override
	public Category findCategory(String category) {
	return categoryMapper.findCategory(category);
	}
	@Override
	public int addNewgoodsCate(String category) {
		if(findCategory(category) != null)
			return 0;
		return categoryMapper.addNewgoodsCate(category);
	}
	@Override
	public List<Category> findAllCategories() {
		return categoryMapper.findAllCategories();
	}
	@Override
	public Category findCategoryById(Integer categoryId) {
		return categoryMapper.findCategoryById(categoryId);
	}
	@Override
	public int updateCategoryById(Category category) {
	 return categoryMapper.updateCategoryById(category);
	}
	@Override
	public int delCategoryById(Integer categoryId) {
		// 已经存在商品的分类，不能删除
			
				return categoryMapper.delCategoryById(categoryId);
	}
	

}
