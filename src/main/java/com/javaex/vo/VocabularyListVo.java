package com.javaex.vo;

import java.util.Arrays;
import java.util.List;

public class VocabularyListVo {

	private int wordbookNo;
	private int wordNo;
	private int seyaWordNo;

	private String directoryName;
	private String wordbookName;
	private String wordName;
	private String meanName;
	private String[] wordArr;
	private String seyaWordName;
	private String seyaMeanName;
	
	public VocabularyListVo() {
		super();
	}
	public VocabularyListVo(int wordbookNo, int wordNo, int seyaWordNo, String directoryName, String wordbookName,
			String wordName, String meanName, String[] wordArr, String seyaWordName, String seyaMeanName) {
		super();
		this.wordbookNo = wordbookNo;
		this.wordNo = wordNo;
		this.seyaWordNo = seyaWordNo;
		this.directoryName = directoryName;
		this.wordbookName = wordbookName;
		this.wordName = wordName;
		this.meanName = meanName;
		this.wordArr = wordArr;
		this.seyaWordName = seyaWordName;
		this.seyaMeanName = seyaMeanName;
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
	public int getSeyaWordNo() {
		return seyaWordNo;
	}
	public void setSeyaWordNo(int seyaWordNo) {
		this.seyaWordNo = seyaWordNo;
	}
	public String getDirectoryName() {
		return directoryName;
	}
	public void setDirectoryName(String directoryName) {
		this.directoryName = directoryName;
	}
	public String getWordbookName() {
		return wordbookName;
	}
	public void setWordbookName(String wordbookName) {
		this.wordbookName = wordbookName;
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
	public String[] getWordArr() {
		return wordArr;
	}
	public void setWordArr(String[] wordArr) {
		this.wordArr = wordArr;
	}
	public String getSeyaWordName() {
		return seyaWordName;
	}
	public void setSeyaWordName(String seyaWordName) {
		this.seyaWordName = seyaWordName;
	}
	public String getSeyaMeanName() {
		return seyaMeanName;
	}
	public void setSeyaMeanName(String seyaMeanName) {
		this.seyaMeanName = seyaMeanName;
	}
	@Override
	public String toString() {
		return "VocabularyListVo [wordbookNo=" + wordbookNo + ", wordNo=" + wordNo + ", seyaWordNo=" + seyaWordNo
				+ ", directoryName=" + directoryName + ", wordbookName=" + wordbookName + ", wordName=" + wordName
				+ ", meanName=" + meanName + ", wordArr=" + Arrays.toString(wordArr) + ", seyaWordName=" + seyaWordName
				+ ", seyaMeanName=" + seyaMeanName + "]";
	}
	
}
	
