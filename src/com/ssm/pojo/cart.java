package com.ssm.pojo;

public class cart {
	private Integer cid;
   private Integer gid;
   private Integer uid;
	private goods goods;
	private User User;
	private Integer count;
	public cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public cart(Integer gid, Integer uid, Integer count) {
		super();
		this.gid = gid;
		this.uid = uid;
		this.count = count;
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


	public goods getGoods() {
		return goods;
	}

	public void setGoods(goods goods) {
		this.goods = goods;
	}

	public User getUser() {
		return User;
	}

	public void setUser(User user) {
		User = user;
	}

	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	

	
	
}
