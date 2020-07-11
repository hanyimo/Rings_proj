package com.ssm.pojo;

public class goodsstore {
	private Integer sid;
	private Integer gid;
	private Integer uid;
	public goodsstore() {
		super();
		// TODO Auto-generated constructor stub
	}
	public goodsstore(int sid, int gid, int uid) {
		super();
		this.sid = sid;
		this.gid = gid;
		this.uid = uid;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	
	
}
