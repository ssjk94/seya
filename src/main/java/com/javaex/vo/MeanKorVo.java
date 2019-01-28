package com.javaex.vo;

public class MeanKorVo {
	private int meanNo;
	private String meanName;
	private int wordNo;

	public int getMeanNo() {
		return meanNo;
	}

	public void setMeanNo(int meanNo) {
		this.meanNo = meanNo;
	}

	public String getMeanName() {
		return meanName;
	}

	public void setMeanName(String meanName) {
		this.meanName = meanName;
	}

	public int getWordNo() {
		return wordNo;
	}

	public void setWordNo(int wordNo) {
		this.wordNo = wordNo;
	}

	public MeanKorVo(int meanNo, String meanName, int wordNo) {
		super();
		this.meanNo = meanNo;
		this.meanName = meanName;
		this.wordNo = wordNo;
	}

	@Override
	public String toString() {
		return "MeanKorVo [meanNo=" + meanNo + ", meanName=" + meanName + ", wordNo=" + wordNo + "]";
	}

}