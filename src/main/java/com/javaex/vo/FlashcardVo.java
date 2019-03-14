package com.javaex.vo;

public class FlashcardVo {
	private int wordNo;
	private String wordName;
	private String meanName;
	private int wordbookNo;
	private String gameName;
	private String gameScore;
	private String master;
	
	
	
	
	public String getGameName() {
		return gameName;
	}

	public void setGameName(String gameName) {
		this.gameName = gameName;
	}

	public String getGameScore() {
		return gameScore;
	}

	public void setGameScore(String gameScore) {
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

	public int getWordbookNo() {
		return wordbookNo;
	}

	public void setWordbookNo(int wordbookNo) {
		this.wordbookNo = wordbookNo;
	}

	public FlashcardVo(int wordNo, String wordName, String meanName, int wordbookNo) {
		this.wordNo = wordNo;
		this.wordName = wordName;
		this.meanName = meanName;
		this.wordbookNo = wordbookNo;
	}

	public FlashcardVo() {
	}

	@Override
	public String toString() {
		return "FlashcardVo [wordNo=" + wordNo + ", wordName=" + wordName + ", meanName=" + meanName + ", wordbookNo="
				+ wordbookNo + ", gameName=" + gameName + ", gameScore=" + gameScore + ", master=" + master + "]";
	}
}
