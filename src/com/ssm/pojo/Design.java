package com.ssm.pojo;

import java.util.Date;

public class Design {
	private Integer designid;
	private Integer uid;
	private String dPhoto;
	private String dlink;
	private Date dCreateDate;
	private String dname;
	private String dMessage;
	public Design() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Design(Integer uid, String dPhoto, String dlink, Date dCreateDate, String dname,
			String dMessage) {
		super();
		this.uid = uid;
		this.dPhoto = dPhoto;
		this.dlink = dlink;
		this.dCreateDate = dCreateDate;
		this.dname = dname;
		this.dMessage = dMessage;
	}
	public Integer getDesignid() {
		return designid;
	}
	public void setDesignid(Integer designid) {
		this.designid = designid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getdPhoto() {
		return dPhoto;
	}
	public void setdPhoto(String dPhoto) {
		this.dPhoto = dPhoto;
	}
	public String getDlink() {
		return dlink;
	}
	public void setDlink(String dlink) {
		this.dlink = dlink;
	}
	public Date getdCreateDate() {
		return dCreateDate;
	}
	public void setdCreateDate(Date dCreateDate) {
		this.dCreateDate = dCreateDate;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getdMessage() {
		return dMessage;
	}
	public void setdMessage(String dMessage) {
		this.dMessage = dMessage;
	}
	
}
