package com.ssm.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssm.pojo.Design;
import com.ssm.pojo.Invitation;
import com.ssm.pojo.InvitationAns;

public interface DesignMapper {
	//根据uid查找对应的设计
	List<Design> findDesignByUid(Integer uid);
	//添加新的商品分类
	int addNewDesign(Design design);
	//添加帖子到数据库中
	int addNewInvitation(Invitation invitation);
	//查找所有帖子
	List<Invitation> findAllInvitation();
	//根据invid查找invitation
	Invitation findInvitationById(Integer invid);
	//根据invTitle查找invitation
	Invitation findInvitationByTitle(String invTitle);
	//根据invid删除自己的invitation信息
	int delInvitationById(Integer invid);
	//根据aid删除invitationAns信息
	int delInvitationAnsById(Integer invid);
	//添加回复信息
	int addNewInvitationAns(InvitationAns ans);
	//查找所有帖子回复
	List<InvitationAns> findAllInvitationAns(Integer invid);
	//审核通过
	int updateInvitationSuccess(@Param("invid") Integer invid,@Param("invAuditDate") Date invAuditDate);
	//审核未通过
	int updateInvitationNo(@Param("invid") Integer invid,@Param("invAuditDate") Date invAuditDate);
}
