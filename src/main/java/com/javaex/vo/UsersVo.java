package com.javaex.vo;

public class UsersVo {
	private int userNo;
	private String id;
	private String password;
	private String userName;
	private String email;
	private String nickName;
	private String userImage;
	private String userBirth;
	private int sex;
	private int userAccess;
	private String userContent;
	private int directoryNo;
	
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getUserImage() {
		return userImage;
	}
	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}
	public String getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public int getUserAccess() {
		return userAccess;
	}
	public void setUserAccess(int userAccess) {
		this.userAccess = userAccess;
	}
	public String getUserContent() {
		return userContent;
	}
	public void setUserContent(String userContent) {
		this.userContent = userContent;
	}
	public int getDirectoryNo() {
		return directoryNo;
	}
	public void setDirectoryNo(int directoryNo) {
		this.directoryNo = directoryNo;
	}
	@Override
	public String toString() {
		return "UsersVo [userNo=" + userNo + ", id=" + id + ", password=" + password + ", userName=" + userName
				+ ", email=" + email + ", nickName=" + nickName + ", userImage=" + userImage + ", userBirth="
				+ userBirth + ", sex=" + sex + ", userAccess=" + userAccess + ", userContent=" + userContent
				+ ", directoryNo=" + directoryNo + "]";
	}
	public UsersVo() {
		super();
	}
	
	
	
}
