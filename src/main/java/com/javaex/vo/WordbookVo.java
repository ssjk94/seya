package com.javaex.vo;

import java.sql.Date;

public class WordbookVo {
	//키값
	private int userNo;
	private int directoryNo;
	private int wordbookNo;
	//users 테이블
	private String nickName;
	private String userImage;
	private String userContent;
	//directory 테이블
	private String directoryName;
	//wordbook 테이블
	private String wordbookName;
	private String wordbookMaker;
	private Date wordbookRegdate;
	private int wordbookAccess;
	private int wordbookType;
	
	
	
	//constructor
	
	public WordbookVo() {
		super();
	}
	public WordbookVo(int userNo, int directoryNo, int wordbookNo, String nickName, String userImage,
			String userContent, String directoryName, String wordbookName, String wordbookMaker, Date wordbookRegdate,
			int wordbookAccess, int wordbookType) {
		super();
		this.userNo = userNo;
		this.directoryNo = directoryNo;
		this.wordbookNo = wordbookNo;
		this.nickName = nickName;
		this.userImage = userImage;
		this.userContent = userContent;
		this.directoryName = directoryName;
		this.wordbookName = wordbookName;
		this.wordbookMaker = wordbookMaker;
		this.wordbookRegdate = wordbookRegdate;
		this.wordbookAccess = wordbookAccess;
		this.wordbookType = wordbookType;
	}



	//setter and getter
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getDirectoryNo() {
		return directoryNo;
	}
	public void setDirectoryNo(int directoryNo) {
		this.directoryNo = directoryNo;
	}
	public int getWordbookNo() {
		return wordbookNo;
	}
	public void setWordbookNo(int wordbookNo) {
		this.wordbookNo = wordbookNo;
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
	public String getUserContent() {
		return userContent;
	}
	public void setUserContent(String userContent) {
		this.userContent = userContent;
	}
	public String getDirectoryName() {
		return directoryName;
	}
	public void setDirectoryName(String directoryName) {
		this.directoryName = directoryName;
	}
	public String getWordbookName() {
		return wordbookName;
	}
	public void setWordbookName(String wordbookName) {
		this.wordbookName = wordbookName;
	}
	public String getWordbookMaker() {
		return wordbookMaker;
	}
	public void setWordbookMaker(String wordbookMaker) {
		this.wordbookMaker = wordbookMaker;
	}
	public Date getWordbookRegdate() {
		return wordbookRegdate;
	}
	public void setWordbookRegdate(Date wordbookRegdate) {
		this.wordbookRegdate = wordbookRegdate;
	}
	public int getWordbookAccess() {
		return wordbookAccess;
	}
	public void setWordbookAccess(int wordbookAccess) {
		this.wordbookAccess = wordbookAccess;
	}
	public int getWordbookType() {
		return wordbookType;
	}
	public void setWordbookType(int wordbookType) {
		this.wordbookType = wordbookType;
	}
	
	//tostring
	
	@Override
	public String toString() {
		return "WordbookVo [userNo=" + userNo + ", directoryNo=" + directoryNo + ", wordbookNo=" + wordbookNo
				+ ", nickName=" + nickName + ", userImage=" + userImage + ", userContent=" + userContent
				+ ", directoryName=" + directoryName + ", wordbookName=" + wordbookName + ", wordbookMaker="
				+ wordbookMaker + ", wordbookRegdate=" + wordbookRegdate + ", wordbookAccess=" + wordbookAccess
				+ ", wordbookType=" + wordbookType + "]";
	}
}

