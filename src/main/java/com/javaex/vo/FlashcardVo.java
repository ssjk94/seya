package com.javaex.vo;

public class FlashcardVo {
	private String wordname;
	private String meanname;
	private int wordbookno;

	public String getWordname() {
		return wordname;
	}

	public void setWordname(String wordname) {
		this.wordname = wordname;
	}

	public String getMeanname() {
		return meanname;
	}

	public void setMeanname(String meanname) {
		this.meanname = meanname;
	}

	public int getWordbookno() {
		return wordbookno;
	}

	public void setWordbookno(int wordbookno) {
		this.wordbookno = wordbookno;
	}

	public FlashcardVo(String wordname, String meanname, int wordbookno) {
		this.wordname = wordname;
		this.meanname = meanname;
		this.wordbookno = wordbookno;
	}

	public FlashcardVo() {
	}

	@Override
	public String toString() {
		return "FlashcardVo [wordname=" + wordname + ", meanname=" + meanname + ", wordbookno=" + wordbookno + "]";
	}

}
