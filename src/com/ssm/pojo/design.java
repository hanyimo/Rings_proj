package com.ssm.pojo;

import java.util.Date;

public class design {
	private Integer did;
	private Integer uid;
	private String dPhoto;
	private String dlink;
	private Date dCreateDate;
	public design() {
		super();
		// TODO Auto-generated constructor stub
	}
	public design(Integer did, Integer uid, String dPhoto, String dlink, Date dCreateDate) {
		super();
		this.did = did;
		this.uid = uid;
		this.dPhoto = dPhoto;
		this.dlink = dlink;
		this.dCreateDate = dCreateDate;
	}
	public Integer getDid() {
		return did;
	}
	public void setDid(Integer did) {
		this.did = did;
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
	
}
