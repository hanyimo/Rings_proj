package com.ssm.pojo;

import java.util.Date;

public class Contact {
	private Integer contactId;
	private User user;
	private String cMessage;
	private Date cDate;
	public Contact() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Contact(Integer contactId, User user, String cMessage, Date dDate) {
		super();
		this.contactId = contactId;
		this.user = user;
		this.cMessage = cMessage;
		this.cDate = cDate;
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
