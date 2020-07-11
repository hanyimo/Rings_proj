package com.ssm.pojo;

import org.hibernate.validator.constraints.Length;

public class Category {
	private Integer categoryId;
	@Length(min=1,message="长度不能小于1个字符")
	private String category;
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
}
