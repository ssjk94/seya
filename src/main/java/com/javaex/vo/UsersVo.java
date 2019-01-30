package com.javaex.vo;

public class UsersVo {
	private int userNo;
	private String id;
	private String password;
	private String username;
	private String email;
	private String nickname;
	private String userimage;
	private String userbirth;
	private int sex;
	private int useraccess;

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

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserimage() {
		return userimage;
	}

	public void setUserimage(String userimage) {
		this.userimage = userimage;
	}

	public String getUserbirth() {
		return userbirth;
	}

	public void setUserbirth(String userbirth) {
		this.userbirth = userbirth;
	}

	public int getUseraccess() {
		return useraccess;
	}

	public void setUseraccess(int useraccess) {
		this.useraccess = useraccess;
	}

	@Override
	public String toString() {
		return "UsersVo [userNo=" + userNo + ", id=" + id + ", password=" + password + ", username=" + username
				+ ", email=" + email + ", nickname=" + nickname + ", userimage=" + userimage + ", userbirth="
				+ userbirth + ", sex=" + sex + ", useraccess=" + useraccess + "]";
	}

	public UsersVo() {
		super();
	}

	public UsersVo(int userNo, String id, String password, String username, String email, String nickname,
			String userimage, String userbirth, int sex, int useraccess) {
		super();
		this.userNo = userNo;
		this.id = id;
		this.password = password;
		this.username = username;
		this.email = email;
		this.nickname = nickname;
		this.userimage = userimage;
		this.userbirth = userbirth;
		this.sex = sex;
		this.useraccess = useraccess;
	}
	public UsersVo(String id, String password) {
		
	}
	
}
