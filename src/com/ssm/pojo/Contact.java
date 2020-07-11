package com.ssm.pojo;

import java.util.Date;

public class Contact {
	private Integer contactId;
	private Integer uid;
	private User user;
	private String cMessage;
	private Date cDate;
	private Integer status;
	public Contact() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Contact(Integer contactId, Integer uid, String cMessage, Date cDate, Integer status) {
		super();
		this.contactId = contactId;
		this.uid = uid;
		this.cMessage = cMessage;
		this.cDate = cDate;
		this.status = status;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Integer getContactId() {
		return contactId;
	}
	public void setContactId(Integer contactId) {
		this.contactId = contactId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getcMessage() {
		return cMessage;
	}
	public void setcMessage(String cMessage) {
		this.cMessage = cMessage;
	}
	public Date getcDate() {
		return cDate;
	}
	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}
	
}
