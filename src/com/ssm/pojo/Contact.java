package com.ssm.pojo;

import java.util.Date;

public class Contact {
	private Integer contactId;
	private Integer uid;
	private String cMessage;
	private Date cDate;
	public Contact() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Contact(Integer contactId, Integer uid, String cMessage, Date dDate) {
		super();
		this.contactId = contactId;
		this.uid = uid;
		this.cMessage = cMessage;
		this.cDate = cDate;
	}
	public Integer getContactId() {
		return contactId;
	}
	public void setContactId(Integer contactId) {
		this.contactId = contactId;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
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
