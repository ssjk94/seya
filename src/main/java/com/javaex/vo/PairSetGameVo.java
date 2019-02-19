package com.javaex.vo;

public class PairSetGameVo {

	private int wordNo;
	private String wordName;
	private String meanName;
	
	
	
	
	
	public PairSetGameVo() {
		super();
	}
	public PairSetGameVo(int wordNo, String wordName, String meanName) {
		super();
		this.wordNo = wordNo;
		this.wordName = wordName;
		this.meanName = meanName;
	}
	public int getWordNo() {
		return wordNo;
	}
	public void setWordNo(int wordNo) {
		this.wordNo = wordNo;
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
	@Override
	public String toString() {
		return "PairSetGameVo [wordNo=" + wordNo + ", wordName=" + wordName + ", meanName=" + meanName + "]";
	}
	
	
	
}
