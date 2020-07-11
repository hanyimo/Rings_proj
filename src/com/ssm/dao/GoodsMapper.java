package com.ssm.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssm.pojo.Category;
import com.ssm.pojo.goods;
import com.ssm.pojo.goodsstore;

public interface GoodsMapper {
	goods findgoodsCode(String goodsCode);
	int addNewGoods(goods goods);
	List<goods> findAllgoods();
	List<goods> findAllgoodsByCate(Integer category);
	goods findgoodsById(Integer gid);
	int updategoodsById(goods goods);
	int updategoodsStockById(goods goods);
	int updategoodsStatusById(@Param("gid") Integer gid,@Param("goodsDownDate") Date goodsDownDate);
	List<goods> showNewgoods();
	List<goods> findLikedgoods(Integer category);
	//显示收藏的商品列表，登录功能完成后记得 加个Integer uid!!!!!!
	List<goods> findAllStoregoods(Integer uid);
	//搜索商品
	List<goods> searchGoods(@Param("goodsName") String goodsName,
			@Param("goodsDesc") String goodsDesc,
			@Param("category") Integer category);
	List<goods> findHotGoods();
	goodsstore findgoodsStoreById(@Param("uid") Integer uid,@Param("gid") Integer gid);
	
}
