package com.javaex.vo;

public class WordEngVo {
	private int wordNo;
	private String wordName;
	private int wordbookNo;

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

	public int getWordbookNo() {
		return wordbookNo;
	}

	public void setWordbookNo(int wordbookNo) {
		this.wordbookNo = wordbookNo;
	}

	public WordEngVo(int wordNo, String wordName, int wordbookNo) {
		super();
		this.wordNo = wordNo;
		this.wordName = wordName;
		this.wordbookNo = wordbookNo;
	}

	@Override
	public String toString() {
		return "WordEngVo [wordNo=" + wordNo + ", wordName=" + wordName + ", wordbookNo=" + wordbookNo + "]";
	}

}