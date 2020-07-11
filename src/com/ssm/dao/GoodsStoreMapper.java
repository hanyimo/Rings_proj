package com.ssm.dao;

import org.apache.ibatis.annotations.Param;

import com.ssm.pojo.goodsstore;


public interface GoodsStoreMapper {
	//判断是否收藏了此商品
	goodsstore findgoodsStoreByUidAndGid(
			@Param("uid") Integer uid,@Param("gid") Integer gid);
	
	int addNewgoodsstore(
			@Param("uid") Integer uid,@Param("gid") Integer gid);
	
	 int delgoodsStoreByUidAndgid(
			@Param("uid") Integer uid,@Param("gid") Integer gid);
}
