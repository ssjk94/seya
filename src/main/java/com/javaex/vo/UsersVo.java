package com.javaex.vo;

public class UsersVo {
	int userNo;
	String id;
	String password;
	String userName;
	String email;
	String nickname;
	String userImage;
	String userBirth;
	int sex;
	int userAccess;

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

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
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

	@Override
	public String toString() {
		return "UsersVo [userNo=" + userNo + ", id=" + id + ", password=" + password + ", userName=" + userName
				+ ", email=" + email + ", nickname=" + nickname + ", userImage=" + userImage + ", userBirth="
				+ userBirth + ", sex=" + sex + ", userAccess=" + userAccess + "]";
	}

	public UsersVo(int userNo, String id, String password, String userName, String email, String nickname,
			String userImage, String userBirth, int sex, int userAccess) {
		super();
		this.userNo = userNo;
		this.id = id;
		this.password = password;
		this.userName = userName;
		this.email = email;
		this.nickname = nickname;
		this.userImage = userImage;
		this.userBirth = userBirth;
		this.sex = sex;
		this.userAccess = userAccess;
	}

}