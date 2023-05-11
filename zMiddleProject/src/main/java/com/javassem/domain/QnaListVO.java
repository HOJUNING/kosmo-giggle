package com.javassem.domain;

public class QnaListVO {
	//문의관리 멤번변수선언
	
	private Integer pi_num;			// 글 번호
	private String  board_catename; // 카테고리 이름
	private String  user_name;		// 작성자
	private String  pi_title;		// 글제목	
	private String  pi_wdate;		// 작성일시
	private Integer pi_count;		// 조회수

	// Getter and Setter 선언
	
	public Integer getPi_num() {
		return pi_num;
	}
	public void setPi_num(Integer pi_num) {
		this.pi_num = pi_num;
	}
	public String getBoard_catename() {
		return board_catename;
	}
	public void setBoard_catename(String board_catename) {
		this.board_catename = board_catename;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getPi_title() {
		return pi_title;
	}
	public void setPi_title(String pi_title) {
		this.pi_title = pi_title;
	}
	public String getPi_wdate() {
		return pi_wdate;
	}
	public void setPi_wdate(String pi_wdate) {
		this.pi_wdate = pi_wdate;
	}
	
	// toString 선언
	 @Override
	public String toString() {
		return "QnaListVO [pi_num=" + pi_num + ", board_catename=" + board_catename + ", user_name=" + user_name
				+ ", pi_title=" + pi_title + ", pi_wdate=" + pi_wdate + ", pi_count=" + pi_count + "]";
	}
}
