package com.javaex.vo;

public class PagingVo {

	private int pageStartNum;    // 출력할 페이지 시작 번호
    private int index;            // 출력할 페이지번호
    private int pageLastNum;          // 출력할 페이지번호 갯수
    private int listCnt;          // 출력할 리스트 갯수
    private int lastListCnt;	// 마지막 출력할 리스트 갯수
    private int total;            // 리스트 총 갯수

    //생성자
    public PagingVo() {
    	super();
    }
	public PagingVo(int pageStartNum, int index, int pageLastNum, int listCnt, int lastListCnt, int total) {
		super();
		this.pageStartNum = pageStartNum;
		this.index = index;
		this.pageLastNum = pageLastNum;
		this.listCnt = listCnt;
		this.lastListCnt = lastListCnt;
		this.total = total;
	}
	
	//세터와 게터
	public int getPageStartNum() {
		return pageStartNum;
	}
	public void setPageStartNum(int pageStartNum) {
		this.pageStartNum = pageStartNum;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public int getPageLastNum() {
		return pageLastNum;
	}
	public void setPageLastNum(int pageLastNum) {
		this.pageLastNum = pageLastNum;
	}
	public int getListCnt() {
		return listCnt;
	}
	public void setListCnt(int listCnt) {
		this.listCnt = listCnt;
	}
	public int getLastListCnt() {
		return lastListCnt;
	}
	public void setLastListCnt(int lastListCnt) {
		this.lastListCnt = lastListCnt;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
	//toString
	@Override
	public String toString() {
		return "PagingVo [pageStartNum=" + pageStartNum + ", index=" + index + ", pageLastNum=" + pageLastNum
				+ ", listCnt=" + listCnt + ", lastListCnt=" + lastListCnt + ", total=" + total + "]";
	}
}