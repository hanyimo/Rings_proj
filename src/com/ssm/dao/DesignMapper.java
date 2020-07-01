package com.ssm.dao;

import java.util.List;

import com.ssm.pojo.Design;

public interface DesignMapper {
	//根据uid查找对应的设计
	List<Design> findDesignByUid(Integer uid);
	//添加新的商品分类
	int addNewDesign(Design design);
	
}
