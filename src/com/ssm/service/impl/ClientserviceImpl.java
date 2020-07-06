package com.ssm.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.dao.DesignMapper;
import com.ssm.pojo.Design;
import com.ssm.pojo.Invitation;
import com.ssm.pojo.InvitationAns;
import com.ssm.service.Clientservice;

@Service("clientService")
public class ClientserviceImpl implements Clientservice {
	@Resource
	private DesignMapper designMapper;
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
}
