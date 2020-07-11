package com.ssm.service;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssm.pojo.Category;
import com.ssm.pojo.goods;
import com.ssm.pojo.goodsstore;

public interface Serverservice {
	Category findCategory(String category);
	
	int addNewgoodsCate( String category);
	
	List<Category> findAllCategories();
	
    Category findCategoryById(Integer categoryId);
	
	int updateCategoryById(Category category);
	
	int delCategoryById(Integer categoryId);
	
	goods findgoodsCode(String goodsCode);
	
	int addNewGoods(goods goods);
	
	List<goods> findAllgoods();

	List<goods> findAllgoodsByCate(Integer category);//category为goods里面的分类id
	
	goods findgoodsById(Integer gid);
	
	int updategoodsById(goods goods);
	
	int updategoodsStockById(goods goods);
	
	int updategoodsStatusById(Integer gid,Date goodsDownDate);
	
	List<goods> showNewgoods();
	
	List<goods> findLikedgoods(Integer category);
	
	goodsstore findgoodsStoreByUidAndGid(Integer uid,Integer gid);
	
	int addNewgoodsstore(Integer uid,Integer gid);
	//显示收藏列表
	List<goods> findAllStoregoods(Integer uid);
	//删除收藏的商品
	int delgoodsStoreByUidAndgid(Integer uid,Integer gid);
	 
	List<goods> searchGoods(String goodsName,String goodsDesc,Integer category); 
	
	List<goods> findHotGoods();
	
	goodsstore findgoodsStoreById(@Param("uid") Integer uid,@Param("gid") Integer gid);
}
