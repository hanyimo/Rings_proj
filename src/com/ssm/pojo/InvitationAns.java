package com.ssm.pojo;

import java.util.Date;

public class InvitationAns {
	private Integer aid;
	private Integer uid;
	private Integer invid;
	private String ansMessage;
	private Date ansDate;
	public InvitationAns() {
		super();
		// TODO Auto-generated constructor stub
	}
	public InvitationAns(int aid, int uid, int invid, String ansMessage, Date ansDate) {
		super();
		this.aid = aid;
		this.uid = uid;
		this.invid = invid;
		this.ansMessage = ansMessage;
		this.ansDate = ansDate;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getInvid() {
		return invid;
	}
	public void setInvid(int invid) {
		this.invid = invid;
	}
	public String getAnsMessage() {
		return ansMessage;
	}
	public void setAnsMessage(String ansMessage) {
		this.ansMessage = ansMessage;
	}
	public Date getAnsDate() {
		return ansDate;
	}
	public void setAnsDate(Date ansDate) {
		this.ansDate = ansDate;
	}
	
}
