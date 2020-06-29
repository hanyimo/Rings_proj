package com.ssm.pojo;

import java.util.Date;

public class contact {
	private Integer contactId;
	private Integer uid;
	private String cMessage;
	private Date dDate;
	public contact() {
		super();
		// TODO Auto-generated constructor stub
	}
	public contact(Integer contactId, Integer uid, String cMessage, Date dDate) {
		super();
		this.contactId = contactId;
		this.uid = uid;
		this.cMessage = cMessage;
		this.dDate = dDate;
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
	public Date getdDate() {
		return dDate;
	}
	public void setdDate(Date dDate) {
		this.dDate = dDate;
	}
	
}
