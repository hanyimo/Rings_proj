package com.ssm.dao;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssm.pojo.cart;
import com.ssm.pojo.goods;
import com.ssm.pojo.order;

public interface userCartMapper {
	/**
	 * 根据商品id和用户id查找购物车中是否存在商品
	  * @param gid--商品id
	 * @param uid--用户id
	 * @return 成功返回对象，失败返回null
	 */
	cart findCartByGidAndUid(@Param("gid") Integer gid,@Param("uid") Integer uid);
	/**
	 * 添加新的购物车记录
	 * @param cart--新的商品
	 * @return 1-成功 0-失败
	 */
	int addCart(cart cart);
	/**
	 * 根据商品Id和用户Id修改对应购物车中商品数量
	 * @param gid--商品id
	 * @return 成功1，失败0
	 */
	int updateCart(@Param("gid") Integer gid,@Param("uid") Integer uid);
	/**
	 * 根据用户id获取其购物车中的所有商品
	 * @param uid--用户id
	 * @return 用户的购物车中的所有商品
	 */
	List<cart> findCartsByUid(Integer uid);
	/**
	 * 根据购物车id移除商品
	 * @param cid--购物车中的编码
	 * @return 1-成功 0-失败
	 */
	int deleteCartByGid(Integer cid);
	
	/*
	 * 根据用户id---uid
	 * 清空购物车
	 */
	int deleteCart(Integer uid);
	/*
	 * 查询所有商品
	 
	goods findGoodsByGid(Integer gid);*/
	/*
	 * 查询订单商品
	 */
	List<order> findAllOrders(Integer uid);

	/*
	 * 生成订单
	 */
   int addNewOrder(order order);
   /*
    * 
    * 是否发货
    */
   //发货
 	int updateSuccess(@Param("oid") Integer oid);
 	//未发货
 	int updateNo(@Param("oid") Integer oid);
 	
 	List<order> findAllOrdersto();
}

