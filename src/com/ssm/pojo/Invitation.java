package com.ssm.pojo;

import java.util.Date;

public class Invitation {
	private Integer invid;
	private Integer uid;
	private String invTitle;
	private String invMessage;
	private Date invCreatDate;
	private String status;
	public Invitation() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Invitation(int invid, int uid, String invTitle, String invMessage, Date invCreatDate, String status) {
		super();
		this.invid = invid;
		this.uid = uid;
		this.invTitle = invTitle;
		this.invMessage = invMessage;
		this.invCreatDate = invCreatDate;
		this.status = status;
	}
	public int getInvid() {
		return invid;
	}
	public void setInvid(int invid) {
		this.invid = invid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getInvTitle() {
		return invTitle;
	}
	public void setInvTitle(String invTitle) {
		this.invTitle = invTitle;
	}
	public String getInvMessage() {
		return invMessage;
	}
	public void setInvMessage(String invMessage) {
		this.invMessage = invMessage;
	}
	public Date getInvCreatDate() {
		return invCreatDate;
	}
	public void setInvCreatDate(Date invCreatDate) {
		this.invCreatDate = invCreatDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
