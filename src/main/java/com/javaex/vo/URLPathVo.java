package com.javaex.vo;

public class URLPathVo {
	private String URLId;
	private String wordbookName;
	private int userNo;
	private int directoryNo;
	private int wordbookNo;
	private int wordEngNo;
	private int meanKorNo;
	//users 테이블
	private String nickName;
	private String userImage;
	private String userContent;
	
	//생성자 
	
	public URLPathVo() {
		super();
	}
	
	

	public URLPathVo(String uRLId, String wordbookName, int userNo, int directoryNo, int wordbookNo, int wordEngNo,
			int meanKorNo, String nickName, String userImage, String userContent) {
		super();
		URLId = uRLId;
		this.wordbookName = wordbookName;
		this.userNo = userNo;
		this.directoryNo = directoryNo;
		this.wordbookNo = wordbookNo;
		this.wordEngNo = wordEngNo;
		this.meanKorNo = meanKorNo;
		this.nickName = nickName;
		this.userImage = userImage;
		this.userContent = userContent;
	}



	//세터와 게터
	
	public String getURLId() {
		return URLId;
	}

	public void setURLId(String uRLId) {
		URLId = uRLId;
	}

	public String getWordbookName() {
		return wordbookName;
	}

	public void setWordbookName(String wordbookName) {
		this.wordbookName = wordbookName;
	}

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

	public int getWordEngNo() {
		return wordEngNo;
	}

	public void setWordEngNo(int wordEngNo) {
		this.wordEngNo = wordEngNo;
	}

	public int getMeanKorNo() {
		return meanKorNo;
	}

	public void setMeanKorNo(int meanKorNo) {
		this.meanKorNo = meanKorNo;
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

	@Override
	public String toString() {
		return "URLPathVo [URLId=" + URLId + ", wordbookName=" + wordbookName + ", userNo=" + userNo + ", directoryNo="
				+ directoryNo + ", wordbookNo=" + wordbookNo + ", wordEngNo=" + wordEngNo + ", meanKorNo=" + meanKorNo
				+ ", nickName=" + nickName + ", userImage=" + userImage + ", userContent=" + userContent + "]";
	}

	

	
	
}
