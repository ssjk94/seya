package com.javaex.vo;

import java.util.Arrays;

public class HeaderSearchVo {

	private int workbookAccess;
	private int wordNo;
	private int wordbookNo;
	private String wordbookName;
	private String keyword;
	private int directoryNo;
	private String directoryName;
	private int userNo;
	private String id;
	private String nickName;
	private String userImage;
	private String userContent;
	private String wordName;
	private String meanName;
	private String seyaMeanName;
	private String[] wordArr;
	private String[] meanArr;
	private int count;
	
	
	public int getWorkbookAccess() {
		return workbookAccess;
	}
	public void setWorkbookAccess(int workbookAccess) {
		this.workbookAccess = workbookAccess;
	}
	public int getWordNo() {
		return wordNo;
	}
	public void setWordNo(int wordNo) {
		this.wordNo = wordNo;
	}
	public int getWordbookNo() {
		return wordbookNo;
	}
	public void setWordbookNo(int wordbookNo) {
		this.wordbookNo = wordbookNo;
	}
	public String getWordbookName() {
		return wordbookName;
	}
	public void setWordbookName(String wordbookName) {
		this.wordbookName = wordbookName;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getDirectoryNo() {
		return directoryNo;
	}
	public void setDirectoryNo(int directoryNo) {
		this.directoryNo = directoryNo;
	}
	public String getDirectoryName() {
		return directoryName;
	}
	public void setDirectoryName(String directoryName) {
		this.directoryName = directoryName;
	}
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
	public String getWordName() {
		return wordName;
	}
	public void setWordName(String wordName) {
		this.wordName = wordName;
	}
	public String getMeanName() {
		return meanName;
	}
	public void setMeanName(String meanName) {
		this.meanName = meanName;
	}
	public String getSeyaMeanName() {
		return seyaMeanName;
	}
	public void setSeyaMeanName(String seyaMeanName) {
		this.seyaMeanName = seyaMeanName;
	}
	public String[] getWordArr() {
		return wordArr;
	}
	public void setWordArr(String[] wordArr) {
		this.wordArr = wordArr;
	}
	public String[] getMeanArr() {
		return meanArr;
	}
	public void setMeanArr(String[] meanArr) {
		this.meanArr = meanArr;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public HeaderSearchVo() {
		super();
	}
	@Override
	public String toString() {
		return "HeaderSearchVo [workbookAccess=" + workbookAccess + ", wordNo=" + wordNo + ", wordbookNo=" + wordbookNo
				+ ", wordbookName=" + wordbookName + ", keyword=" + keyword + ", directoryNo=" + directoryNo
				+ ", directoryName=" + directoryName + ", userNo=" + userNo + ", id=" + id + ", nickName=" + nickName
				+ ", userImage=" + userImage + ", userContent=" + userContent + ", wordName=" + wordName + ", meanName="
				+ meanName + ", seyaMeanName=" + seyaMeanName + ", wordArr=" + Arrays.toString(wordArr) + ", meanArr="
				+ Arrays.toString(meanArr) + ", count=" + count + ", getWorkbookAccess()=" + getWorkbookAccess()
				+ ", getWordNo()=" + getWordNo() + ", getWordbookNo()=" + getWordbookNo() + ", getWordbookName()="
				+ getWordbookName() + ", getKeyword()=" + getKeyword() + ", getDirectoryNo()=" + getDirectoryNo()
				+ ", getDirectoryName()=" + getDirectoryName() + ", getUserNo()=" + getUserNo() + ", getId()=" + getId()
				+ ", getNickName()=" + getNickName() + ", getUserImage()=" + getUserImage() + ", getUserContent()="
				+ getUserContent() + ", getWordName()=" + getWordName() + ", getMeanName()=" + getMeanName()
				+ ", getSeyaMeanName()=" + getSeyaMeanName() + ", getWordArr()=" + Arrays.toString(getWordArr())
				+ ", getMeanArr()=" + Arrays.toString(getMeanArr()) + ", getCount()=" + getCount() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	
	
}
