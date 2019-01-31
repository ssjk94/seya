package com.javaex.vo;

public class URLPathVo {

	private String URLId;
	private String directoryName;
	
	
	public String getURLId() {
		return URLId;
	}
	public void setURLId(String uRLId) {
		URLId = uRLId;
	}
	public String getDirectoryName() {
		return directoryName;
	}
	public void setDirectoryName(String directoryName) {
		this.directoryName = directoryName;
	}
	public URLPathVo(String uRLId, String directoryName) {
		super();
		URLId = uRLId;
		this.directoryName = directoryName;
	}
	public URLPathVo() {
		super();
	}
	@Override
	public String toString() {
		return "URLPath [URLId=" + URLId + ", directoryName=" + directoryName + "]";
	}
	public URLPathVo(String uRLId) {
		super();
		URLId = uRLId;
	}
	
	
}
	
	
	
	
