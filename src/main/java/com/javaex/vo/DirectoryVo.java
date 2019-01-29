package com.javaex.vo;

public class DirectoryVo {
	private int directoryNo;
	private String directoryName;
	private int userNo;

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

	public DirectoryVo(int directoryNo, String directoryName, int userNo) {
		super();
		this.directoryNo = directoryNo;
		this.directoryName = directoryName;
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "DirectoryVo [directoryNo=" + directoryNo + ", directoryName=" + directoryName + ", userNo=" + userNo
				+ "]";
	}

}