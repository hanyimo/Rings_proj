package com.ssm.pojo;

import java.util.Date;

public class order {
	private Integer oid;
	private String order_code;
	private String address;
	private String receiver;
	private String status;
	private Date order_time;
	private Date order_date;
	public order() {
		super();
		// TODO Auto-generated constructor stub
	}
	public order(int oid, String order_code, String address, String receiver, String status, Date order_time,
			Date order_date) {
		super();
		this.oid = oid;
		this.order_code = order_code;
		this.address = address;
		this.receiver = receiver;
		this.status = status;
		this.order_time = order_time;
		this.order_date = order_date;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getOrder_code() {
		return order_code;
	}
	public void setOrder_code(String order_code) {
		this.order_code = order_code;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getOrder_time() {
		return order_time;
	}
	public void setOrder_time(Date order_time) {
		this.order_time = order_time;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	
}
