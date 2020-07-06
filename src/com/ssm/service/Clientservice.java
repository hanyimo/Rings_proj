package com.ssm.service;


import java.util.Date;
import java.util.List;

import com.ssm.pojo.Design;
import com.ssm.pojo.Invitation;
import com.ssm.pojo.InvitationAns;

public interface Clientservice {
	List<Design> findDesignByUid(Integer uid);
	
	int addNewDesign(Design design);
	
	int addNewInvitation(Invitation invitation);
	
	List<Invitation> findAllInvitation();
	
	Invitation findInvitationById(Integer invid);
	
	Invitation findInvitationByTitle(String invTitle);
	
	int delInvitationById(Integer invid);
	
	int delInvitationAnsById(Integer invid);
	
	int addNewInvitationAns(InvitationAns ans);
	
	List<InvitationAns> findAllInvitationAns(Integer invid);
	
	int updateInvitationSuccess(Integer invid,Date invAuditDate);
	
	int updateInvitationNo(Integer invid,Date invAuditDate);
}
