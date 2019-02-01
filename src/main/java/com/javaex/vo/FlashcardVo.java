package com.javaex.vo;

public class FlashcardVo {
	private String wordName;
	private String meanName;
	private int wordbookNo;

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

	public int getWordbookNo() {
		return wordbookNo;
	}

	public void setWordbookNo(int wordbookNo) {
		this.wordbookNo = wordbookNo;
	}

	public FlashcardVo(String wordName, String meanName, int wordbookNo) {
		this.wordName = wordName;
		this.meanName = meanName;
		this.wordbookNo = wordbookNo;
	}

	public FlashcardVo() {
	}

	@Override
	public String toString() {
		return "FlashcardVo [wordName=" + wordName + ", meanName=" + meanName + ", wordbookNo=" + wordbookNo + "]";
	}

}
