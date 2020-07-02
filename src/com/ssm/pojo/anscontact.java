package com.ssm.pojo;

import java.util.Date;

public class anscontact {
	private Integer ansContactId;
	private User user;
	private String ansMessage;
	private Date ansDate;
	private String status;
	public anscontact() {
		super();
		// TODO Auto-generated constructor stub
	}
	public anscontact(Integer ansContactId, User user, String ansMessage, Date ansDate, String status) {
		super();
		this.ansContactId = ansContactId;
		this.user = user;
		this.ansMessage = ansMessage;
		this.ansDate = ansDate;
		this.status = status;
	}
	public Integer getAnsContactId() {
		return ansContactId;
	}
	public void setAnsContactId(Integer ansContactId) {
		this.ansContactId = ansContactId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
