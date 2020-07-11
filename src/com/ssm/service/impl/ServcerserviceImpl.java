package com.ssm.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.ssm.dao.CategoryMapper;
import com.ssm.dao.GoodsMapper;
import com.ssm.dao.GoodsStoreMapper;
import com.ssm.pojo.Category;
import com.ssm.pojo.goods;
import com.ssm.pojo.goodsstore;
import com.ssm.service.Serverservice;

@Service("serverService")
public class ServcerserviceImpl implements Serverservice {
	@Resource
	private CategoryMapper categoryMapper;
	@Resource
	private GoodsMapper goodsMapper;
	@Resource
	private GoodsStoreMapper goodsstoreMapper;

	@Override
	public Category findCategory(String category) {
		return categoryMapper.findCategory(category);
	}

	@Override
	public int addNewgoodsCate(String category) {
		if (findCategory(category) != null)
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
     //删除分类
	@Override
	public int delCategoryById(Integer categoryId) {
		// 已经存在商品的分类，不能删除
		   List<goods> gss=findAllgoodsByCate(categoryId);
			if(gss.size() != 0)
				return 0;
		return categoryMapper.delCategoryById(categoryId);
	}

	@Override
	public goods findgoodsCode(String goodsCode) {
		return goodsMapper.findgoodsCode(goodsCode);
	}

	// 添加商品
	@Override
	public int addNewGoods(goods goods) {
		goods gss=findgoodsCode(goods.getGoodsCode());
		if(gss!=null) {
			return 0;
		}
		return goodsMapper.addNewGoods(goods);
	}

	// 查看所有商品
	@Override
	public List<goods> findAllgoods() {
		return goodsMapper.findAllgoods();
	}

	// 根据分类Id查看所有商品
	@Override
	public List<goods> findAllgoodsByCate(Integer category) {
		return goodsMapper.findAllgoodsByCate(category);
	}

	// 根据商品Id查看所有商品
	@Override
	public goods findgoodsById(Integer gid) {
		return goodsMapper.findgoodsById(gid);
	}
    //根据gid修改相关商品信息
	@Override
	public int updategoodsById(goods goods) {
		goods gss=findgoodsCode(goods.getGoodsCode());
		if(gss!=null) {
			return 0;
		}
		return goodsMapper.updategoodsById(goods);
	}
	//根据gid修改相关商品库存信息
	@Override
	public int updategoodsStockById(goods goods) {
		return goodsMapper.updategoodsStockById(goods);
	}

	@Override
	public int updategoodsStatusById(Integer gid,Date goodsDownDate) {
		return goodsMapper.updategoodsStatusById(gid,goodsDownDate);
	}

	@Override
	public List<goods> showNewgoods() {
		return goodsMapper.showNewgoods();
	}

	@Override
	public List<goods> findLikedgoods(Integer category) {
		return goodsMapper.findLikedgoods(category);
	}
     //根据gid,uid判断是否收藏此商品
	@Override
	public goodsstore findgoodsStoreByUidAndGid(Integer uid, Integer gid) {
		return goodsstoreMapper.findgoodsStoreByUidAndGid(uid, gid);
	}
   //商品收藏
	@Override
	public int addNewgoodsstore(Integer uid, Integer gid) {
		return goodsstoreMapper.addNewgoodsstore(uid, gid);
	}
    //显示收藏列表
	@Override
	public List<goods> findAllStoregoods(Integer uid) {
		return goodsMapper.findAllStoregoods(uid);
	}

	@Override
	public int delgoodsStoreByUidAndgid(Integer uid, Integer gid) {
		return goodsstoreMapper.delgoodsStoreByUidAndgid(uid, gid);
	}

	@Override
	public List<goods> searchGoods(String goodsName, String goodsDesc,Integer category) {
		return goodsMapper.searchGoods(goodsName, goodsDesc,category);
	}
	@Override
	public List<goods> findHotGoods() {
		return goodsMapper.findHotGoods();
	}
	@Override
	public goodsstore findgoodsStoreById(@Param("uid") Integer uid,@Param("gid") Integer gid) {
		return goodsMapper.findgoodsStoreById(uid, gid);
	}
}
