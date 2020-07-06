package com.ssm.pojo;

import java.util.Date;

public class anscontact {
	private Integer ansContactId;
	private String ansMessage;
	private Date ansDate;
	private String status;
	private User user;
	private Integer uid;
	private Contact contact;
	private Integer contactId;
	public anscontact() {
		super();
	}
	public anscontact(Integer ansContactId, Integer uid, String ansMessage, Date ansDate, String status,Integer contactId,
					   User user,Contact contact) {
		super();
		this.ansContactId = ansContactId;
		this.uid = uid;
		this.ansMessage = ansMessage;
		this.ansDate = ansDate;
		this.status = status;
		this.contactId = contactId;
		this.user = user;
		this.contact = contact;
	}
	public Integer getAnsContactId() {
		return ansContactId;
	}
	public void setAnsContactId(Integer ansContactId) {
		this.ansContactId = ansContactId;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
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
	public Contact getContact() {
		return contact;
	}
	public void setContact(Contact contact) {
		this.contact = contact;
	}
	
}
