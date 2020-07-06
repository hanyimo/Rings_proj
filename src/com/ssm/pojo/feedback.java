package com.ssm.pojo;

import java.util.Date;

public class feedback {
	private Integer fid;
	private User user;
	private Integer uid;
	private String fMessage;
	private Date fDate;
	private String subject;
	public feedback() {
		super();
	}
	public feedback(Integer fid, Integer uid, String fMessage, Date fDate,String subject,User user) {
		super();
		this.fid = fid;
		this.uid = uid;
		this.fMessage = fMessage;
		this.fDate = fDate;
		this.subject = subject;
		this.user = user;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public Integer getFid() {
		return fid;
	}
	public void setFid(Integer fid) {
		this.fid = fid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getfMessage() {
		return fMessage;
	}
	public void setfMessage(String fMessage) {
		this.fMessage = fMessage;
	}
	public Date getfDate() {
		return fDate;
	}
	public void setfDate(Date fDate) {
		this.fDate = fDate;
	}
	
}
