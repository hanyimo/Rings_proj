package com.ssm.pojo;

import java.util.Date;

public class goods {
	private Integer gid;
	private String goodsName;
	private String goodsDesc;
	private Double goodsPrice;
	private String goodsPhoto;
	private Category category;
	private Date goodsCreateDate;
	private String status;
	private Integer goodsScore;
	private Integer goodsStock;
	private String goodsCode;
	private String material;
	public goods() {
		super();
		// TODO Auto-generated constructor stub
	}
	public goods(Integer gid, String goodsName, String goodsDesc, Double goodsPrice, String goodsPhoto,
			Category category, Date goodsCreateDate, String status, Integer goodsScore, Integer goodsStock,
			String goodsCode, String material) {
		super();
		this.gid = gid;
		this.goodsName = goodsName;
		this.goodsDesc = goodsDesc;
		this.goodsPrice = goodsPrice;
		this.goodsPhoto = goodsPhoto;
		this.category = category;
		this.goodsCreateDate = goodsCreateDate;
		this.status = status;
		this.goodsScore = goodsScore;
		this.goodsStock = goodsStock;
		this.goodsCode = goodsCode;
		this.material = material;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getGoodsDesc() {
		return goodsDesc;
	}
	public void setGoodsDesc(String goodsDesc) {
		this.goodsDesc = goodsDesc;
	}
	public Double getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(Double goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public String getGoodsPhoto() {
		return goodsPhoto;
	}
	public void setGoodsPhoto(String goodsPhoto) {
		this.goodsPhoto = goodsPhoto;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Date getGoodsCreateDate() {
		return goodsCreateDate;
	}
	public void setGoodsCreateDate(Date goodsCreateDate) {
		this.goodsCreateDate = goodsCreateDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Integer getGoodsScore() {
		return goodsScore;
	}
	public void setGoodsScore(Integer goodsScore) {
		this.goodsScore = goodsScore;
	}
	public Integer getGoodsStock() {
		return goodsStock;
	}
	public void setGoodsStock(Integer goodsStock) {
		this.goodsStock = goodsStock;
	}
	public String getGoodsCode() {
		return goodsCode;
	}
	public void setGoodsCode(String goodsCode) {
		this.goodsCode = goodsCode;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	
	
}
