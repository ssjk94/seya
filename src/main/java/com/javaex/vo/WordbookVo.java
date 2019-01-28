package com.javaex.vo;

public class WordbookVo {
	private int wordbookNo;
	private String wordbookName;
	private String wordbookRegdate;
	private int wordbookAccess;
	private int wordbookType;
	private int directoryNo;

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

	public String getWordbookRegdate() {
		return wordbookRegdate;
	}

	public void setWordbookRegdate(String wordbookRegdate) {
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

	public int getDirectoryNo() {
		return directoryNo;
	}

	public void setDirectoryNo(int directoryNo) {
		this.directoryNo = directoryNo;
	}

	public WordbookVo(int wordbookNo, String wordbookName, String wordbookRegdate, int wordbookAccess, int wordbookType,
			int directoryNo) {
		super();
		this.wordbookNo = wordbookNo;
		this.wordbookName = wordbookName;
		this.wordbookRegdate = wordbookRegdate;
		this.wordbookAccess = wordbookAccess;
		this.wordbookType = wordbookType;
		this.directoryNo = directoryNo;
	}

	@Override
	public String toString() {
		return "WordbookVo [wordbookNo=" + wordbookNo + ", wordbookName=" + wordbookName + ", wordbookRegdate="
				+ wordbookRegdate + ", wordbookAccess=" + wordbookAccess + ", wordbookType=" + wordbookType
				+ ", directoryNo=" + directoryNo + "]";
	}

}