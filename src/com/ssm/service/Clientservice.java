package com.ssm.service;


import java.util.Date;
import java.util.List;

import com.ssm.pojo.Design;
import com.ssm.pojo.Invitation;
import com.ssm.pojo.InvitationAns;
import com.ssm.pojo.cart;
import com.ssm.pojo.order;

public interface Clientservice {
	List<Design> findDesignByUid(Integer uid);
	
	int addNewDesign(Design design);
	
	int addNewInvitation(Invitation invitation);
	
	List<Invitation> findAllInvitation();
	
	Invitation findInvitationById(Integer invid);
	
	Invitation findInvitationByTitle(String invTitle);
	
	int delInvitationById(Integer invid);
	
	int delInvitationAnsByInvId(Integer invid);
	
	int delInvitationAnsById(Integer invid);
	
	int addNewInvitationAns(InvitationAns ans);
	
	List<InvitationAns> findAllInvitationAns(Integer invid);
	
	int updateInvitationSuccess(Integer invid,Date invAuditDate);
	
	int updateInvitationNo(Integer invid,Date invAuditDate);
	
	
	
	
	
	cart findCartByGidAndUid(Integer gid,Integer uid);
	
	int addCart(cart cart);
	
	int updateCart(Integer gid,Integer uid);
	
	List<cart> findCartsByUid(Integer uid);
	
	int deleteCartByGid(Integer cid);

	int deleteCart(Integer uid);

	List<order> findAllOrders(Integer uid);
	
	int addNewOrder(order order);
	
    int updateSuccess(Integer oid);
	
	int updateNo(Integer oid);
	
	List<order> findAllOrdersto();
}
