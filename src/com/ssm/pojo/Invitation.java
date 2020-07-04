package com.ssm.pojo;

import java.util.Date;

public class Invitation {
	private Integer invid;
	private User uid;
	private String invTitle;
	private String invMessage;
	private Date invCreatDate;
	private String status;
	public Integer getInvid() {
		return invid;
	}
	public void setInvid(Integer invid) {
		this.invid = invid;
	}
	public User getUid() {
		return uid;
	}
	public void setUid(User uid) {
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
