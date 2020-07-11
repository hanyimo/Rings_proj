package com.ssm.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.dao.DesignMapper;
import com.ssm.dao.userCartMapper;
import com.ssm.pojo.Design;
import com.ssm.pojo.Invitation;
import com.ssm.pojo.InvitationAns;
import com.ssm.pojo.User;
import com.ssm.pojo.cart;
import com.ssm.pojo.order;
import com.ssm.service.Clientservice;

@Service("clientService")
public class ClientserviceImpl implements Clientservice {
	@Resource
	private DesignMapper designMapper;
	@Resource
	private userCartMapper usercartMapper;
	@Override
	public List<Design> findDesignByUid(Integer uid) {
		return designMapper.findDesignByUid(uid);
	}
	@Override
	public int addNewDesign(Design design) {
		return designMapper.addNewDesign(design);
	}
	@Override
	public int addNewInvitation(Invitation invitation){
		return designMapper.addNewInvitation(invitation);
	}
	@Override
	public List<Invitation> findAllInvitation() {
		return designMapper.findAllInvitation();
	}
	@Override
	public Invitation findInvitationByTitle(String invTitle) {
		return designMapper.findInvitationByTitle(invTitle);
	}
	@Override
	public Invitation findInvitationById(Integer invid) {
		return designMapper.findInvitationById(invid);
	}
	@Override
	public int delInvitationById(Integer invid) {
		return designMapper.delInvitationById(invid);
	}
	@Override
	public int delInvitationAnsByInvId(Integer invid) {
		return designMapper.delInvitationAnsByInvId(invid);
	}
	@Override
	public int delInvitationAnsById(Integer invid) {
		return designMapper.delInvitationAnsById(invid);
	}
	@Override
	public int addNewInvitationAns(InvitationAns ans) {
		return designMapper.addNewInvitationAns(ans);
	}
	@Override
	public List<InvitationAns> findAllInvitationAns(Integer invid) {
		return designMapper.findAllInvitationAns(invid);
	}
	@Override
	public int updateInvitationSuccess(Integer invid,Date invAuditDate) {
		return designMapper.updateInvitationSuccess(invid,invAuditDate);
	}
	@Override
	public int updateInvitationNo(Integer invid,Date invAuditDate) {
		return designMapper.updateInvitationNo(invid,invAuditDate);
	}
	
	
	
	
	// 根据商品id和用户id查找购物车中是否存在商品
	@Override
	public cart findCartByGidAndUid(Integer gid,Integer uid){
		return usercartMapper.findCartByGidAndUid(gid,uid);
	}

	//添加新的购物车
	@Override
	public int addCart(cart cart) {
		return usercartMapper.addCart(cart);
	}

	//根据商品Id和用户Id修改对应购物车中商品数量
	@Override
	public int updateCart(Integer gid, Integer uid) {
		return usercartMapper.updateCart(gid, uid);
	}

	//根据用户id获取其购物车中的所有商品
	@Override
	public List<cart> findCartsByUid(Integer uid) {
		return usercartMapper.findCartsByUid(uid);
	}

	//根据购物车id移除商品
	@Override
	public int deleteCartByGid(Integer cid) {
		return usercartMapper.deleteCartByGid(cid);
	}
   //根据用户id清空购物车
	@Override
	public int deleteCart(Integer uid) {
		return usercartMapper.deleteCart(uid);
	}
	//获取订单商品
	@Override
	public List<order> findAllOrders(Integer uid) {
		return usercartMapper.findAllOrders(uid);
	}
	//生成订单
	@Override
	public int addNewOrder(order order) {
		return usercartMapper.addNewOrder(order);
	}
    //发货
	@Override
	public int updateSuccess(Integer oid) {
		return usercartMapper.updateSuccess(oid);
	}
    //未发货
	@Override
	public int updateNo(Integer oid) {
		return usercartMapper.updateNo(oid);
	}
	@Override
	public List<order> findAllOrdersto(){
		return usercartMapper.findAllOrdersto();
	}
}
