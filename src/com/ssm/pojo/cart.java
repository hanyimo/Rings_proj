package com.ssm.pojo;

public class cart {
	private Integer cid;
	private Integer gid;
	private Integer uid;
	private Integer count;
	private String status;
	public cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	public cart(Integer cid, Integer gid, Integer uid, Integer count, String status) {
		super();
		this.cid = cid;
		this.gid = gid;
		this.uid = uid;
		this.count = count;
		this.status = status;
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
