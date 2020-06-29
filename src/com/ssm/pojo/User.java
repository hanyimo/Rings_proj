package com.ssm.pojo;

import java.util.Date;

public class User {
	private Integer uid;
	private String userPsw;
	private String userName;
	private String userAlice;
	private String userEmail;
	private String userSex;
	private String userPhoto;
	private Double userScore;
	private Date userCreateDate;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int uid, String userPsw, String userName, String userAlice, String userEmail, String userSex,
			String userPhoto, Double userScore, Date userCreateDate) {
		super();
		this.uid = uid;
		this.userPsw = userPsw;
		this.userName = userName;
		this.userAlice = userAlice;
		this.userEmail = userEmail;
		this.userSex = userSex;
		this.userPhoto = userPhoto;
		this.userScore = userScore;
		this.userCreateDate = userCreateDate;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUserPsw() {
		return userPsw;
	}
	public void setUserPsw(String userPsw) {
		this.userPsw = userPsw;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserAlice() {
		return userAlice;
	}
	public void setUserAlice(String userAlice) {
		this.userAlice = userAlice;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getUserPhoto() {
		return userPhoto;
	}
	public void setUserPhoto(String userPhoto) {
		this.userPhoto = userPhoto;
	}
	public Double getUserScore() {
		return userScore;
	}
	public void setUserScore(Double userScore) {
		this.userScore = userScore;
	}
	public Date getUserCreateDate() {
		return userCreateDate;
	}
	public void setUserCreateDate(Date userCreateDate) {
		this.userCreateDate = userCreateDate;
	}
	
}
