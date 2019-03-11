package com.javaex.vo;

public class PairSetGameVo {

	private int wordbookNo;
	private int wordNo;
	private int userNo;
	private String wordName;
	private String meanName;
	private String gameName;
	private int gameScore;
	private String master;
	
	
	
	
	public PairSetGameVo() {
		super();
	}

	
	
	public int getWordbookNo() {
		return wordbookNo;
	}



	public void setWordbookNo(int wordbookNo) {
		this.wordbookNo = wordbookNo;
	}



	public int getUserNo() {
		return userNo;
	}



	public void setUserNo(int userNo) {
		this.userNo = userNo;
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
		return "PairSetGameVo [wordbookNo=" + wordbookNo + ", wordNo=" + wordNo + ", userNo=" + userNo + ", wordName="
				+ wordName + ", meanName=" + meanName + ", gameName=" + gameName + ", gameScore=" + gameScore
				+ ", master=" + master + "]";
	}

	
	
	
}
