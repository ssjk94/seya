package com.javaex.vo;

public class FlashcardVo {
	private int wordno;
	private String wordname;
	private int meanno;
	private String meanname;
	private int wordbookno;

	public int getWordno() {
		return wordno;
	}

	public void setWordno(int wordno) {
		this.wordno = wordno;
	}

	public String getWordname() {
		return wordname;
	}

	public void setWordname(String wordname) {
		this.wordname = wordname;
	}

	public int getMeanno() {
		return meanno;
	}

	public void setMeanno(int meanno) {
		this.meanno = meanno;
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

	public FlashcardVo(int wordno, String wordname, int meanno, String meanname, int wordbookno) {
		this.wordno = wordno;
		this.wordname = wordname;
		this.meanno = meanno;
		this.meanname = meanname;
		this.wordbookno = wordbookno;
	}

	public FlashcardVo() {
	}

	@Override
	public String toString() {
		return "FlashcardVo [wordno=" + wordno + ", wordname=" + wordname + ", meanno=" + meanno + ", meanname="
				+ meanname + ", wordbookno=" + wordbookno + "]";
	}

}
