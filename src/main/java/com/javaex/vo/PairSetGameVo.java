package com.javaex.vo;

public class PairSetGameVo {

	private int wordbookNo;
	private int wordNo;
	private int userNo;
	private int startNum;
	private int endNum;
	private String wordName;
	private String meanName;
	private String word1;
	private String word2;
	private String word3;
	private String word4;
	private String mean1;
	private String mean2;
	private String mean3;
	private String mean4;
	private String gameName;
	private int gameScore;
	private String master;

	public PairSetGameVo(int wordbookNo, int wordNo, int userNo, int startNum, int endNum, String wordName,
			String meanName, String word1, String word2, String word3, String word4, String mean1, String mean2,
			String mean3, String mean4, String gameName, int gameScore, String master) {
		super();
		this.wordbookNo = wordbookNo;
		this.wordNo = wordNo;
		this.userNo = userNo;
		this.startNum = startNum;
		this.endNum = endNum;
		this.wordName = wordName;
		this.meanName = meanName;
		this.word1 = word1;
		this.word2 = word2;
		this.word3 = word3;
		this.word4 = word4;
		this.mean1 = mean1;
		this.mean2 = mean2;
		this.mean3 = mean3;
		this.mean4 = mean4;
		this.gameName = gameName;
		this.gameScore = gameScore;
		this.master = master;
	}




	public PairSetGameVo() {
		super();
	}
	
	
	
	
	public int getWordbookNo() {
		return wordbookNo;
	}
	public void setWordbookNo(int wordbookNo) {
		this.wordbookNo = wordbookNo;
	}
	public int getWordNo() {
		return wordNo;
	}
	public void setWordNo(int wordNo) {
		this.wordNo = wordNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
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
	public String getGameName() {
		return gameName;
	}
	public void setGameName(String gameName) {
		this.gameName = gameName;
	}
	public int getGameScore() {
		return gameScore;
	}
	public void setGameScore(int gameScore) {
		this.gameScore = gameScore;
	}
	public String getMaster() {
		return master;
	}
	public void setMaster(String master) {
		this.master = master;
	}
	public String getWord1() {
		return word1;
	}
	

	public int getStartNum() {
		return startNum;
	}




	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}




	public int getEndNum() {
		return endNum;
	}




	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}




	public void setWord1(String word1) {
		this.word1 = word1;
	}




	public String getWord2() {
		return word2;
	}




	public void setWord2(String word2) {
		this.word2 = word2;
	}




	public String getWord3() {
		return word3;
	}




	public void setWord3(String word3) {
		this.word3 = word3;
	}




	public String getWord4() {
		return word4;
	}




	public void setWord4(String word4) {
		this.word4 = word4;
	}




	public String getMean1() {
		return mean1;
	}




	public void setMean1(String mean1) {
		this.mean1 = mean1;
	}




	public String getMean2() {
		return mean2;
	}




	public void setMean2(String mean2) {
		this.mean2 = mean2;
	}




	public String getMean3() {
		return mean3;
	}




	public void setMean3(String mean3) {
		this.mean3 = mean3;
	}




	public String getMean4() {
		return mean4;
	}




	public void setMean4(String mean4) {
		this.mean4 = mean4;
	}




	@Override
	public String toString() {
		return "PairSetGameVo [wordbookNo=" + wordbookNo + ", wordNo=" + wordNo + ", userNo=" + userNo + ", startNum="
				+ startNum + ", endNum=" + endNum + ", wordName=" + wordName + ", meanName=" + meanName + ", word1="
				+ word1 + ", word2=" + word2 + ", word3=" + word3 + ", word4=" + word4 + ", mean1=" + mean1 + ", mean2="
				+ mean2 + ", mean3=" + mean3 + ", mean4=" + mean4 + ", gameName=" + gameName + ", gameScore="
				+ gameScore + ", master=" + master + "]";
	}

	
}
