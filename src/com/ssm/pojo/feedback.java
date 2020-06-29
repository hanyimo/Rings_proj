package com.ssm.pojo;

import java.util.Date;

public class feedback {
	private Integer fid;
	private Integer uid;
	private String fMessage;
	private Date fDate;
	public feedback() {
		super();
		// TODO Auto-generated constructor stub
	}
	public feedback(Integer fid, Integer uid, String fMessage, Date fDate) {
		super();
		this.fid = fid;
		this.uid = uid;
		this.fMessage = fMessage;
		this.fDate = fDate;
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
