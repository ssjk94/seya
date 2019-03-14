package com.javaex.vo;

public class RankingVo {

	private int userNo;
	private int wordbookNo;
	private int gameSelectNo;
	private String gameName;
	private String master;
	
	private int gameScore;
	private String userImage;
	private String usernickname;
	private int userScore;
	
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getWordbookNo() {
		return wordbookNo;
	}
	public void setWordbookNo(int wordbookNo) {
		this.wordbookNo = wordbookNo;
	}
	public int getGameSelectNo() {
		return gameSelectNo;
	}
	public void setGameSelectNo(int gameSelectNo) {
		this.gameSelectNo = gameSelectNo;
	}
	public String getGameName() {
		return gameName;
	}
	public void setGameName(String gameName) {
		this.gameName = gameName;
	}
	public String getMaster() {
		return master;
	}
	public void setMaster(String master) {
		this.master = master;
	}
	public int getGameScore() {
		return gameScore;
	}
	public void setGameScore(int gameScore) {
		this.gameScore = gameScore;
	}
	public String getUserImage() {
		return userImage;
	}
	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}
	public String getUsernickname() {
		return usernickname;
	}
	public void setUsernickname(String usernickname) {
		this.usernickname = usernickname;
	}
	public int getUserScore() {
		return userScore;
	}
	public void setUserScore(int userScore) {
		this.userScore = userScore;
	}
	@Override
	public String toString() {
		return "RankingVo [userNo=" + userNo + ", wordbookNo=" + wordbookNo + ", gameSelectNo=" + gameSelectNo
				+ ", gameName=" + gameName + ", master=" + master + ", gameScore=" + gameScore + ", userImage="
				+ userImage + ", usernickname=" + usernickname + ", userScore=" + userScore + "]";
	}

}
