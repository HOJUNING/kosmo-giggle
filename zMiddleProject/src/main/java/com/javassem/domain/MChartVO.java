package com.javassem.domain;

public class MChartVO {
	
	//주류 주문 멤버변수선언
	
	private Integer or_num;			//주문번호
	private Integer user_num;		//회원번호
	private Integer or_totalprice;	//주문총액수
	private String  or_paydate;		//주문날짜
	private Integer item_num;		//결제상품번호
	private Integer al_num;			//주류번호
	private Integer item_count;		//주류수량
	
	//Getter and Setter
	
	public Integer getOr_num() {
		return or_num;
	}
	public void setOr_num(Integer or_num) {
		this.or_num = or_num;
	}
	public Integer getUser_num() {
		return user_num;
	}
	public void setUser_num(Integer user_num) {
		this.user_num = user_num;
	}
	public Integer getOr_totalprice() {
		return or_totalprice;
	}
	public void setOr_totalprice(Integer or_totalprice) {
		this.or_totalprice = or_totalprice;
	}
	public String getOr_paydate() {
		return or_paydate;
	}
	public void setOr_paydate(String or_paydate) {
		this.or_paydate = or_paydate;
	}
	public Integer getItem_num() {
		return item_num;
	}
	public void setItem_num(Integer item_num) {
		this.item_num = item_num;
	}
	public Integer getAl_num() {
		return al_num;
	}
	public void setAl_num(Integer al_num) {
		this.al_num = al_num;
	}
	public Integer getItem_count() {
		return item_count;
	}
	public void setItem_count(Integer item_count) {
		this.item_count = item_count;
	}
	
	@Override
	public String toString() {
		return "MChartVO [or_num=" + or_num + ", user_num=" + user_num + ", or_totalprice=" + or_totalprice
				+ ", or_paydate=" + or_paydate + ", item_num=" + item_num + ", al_num=" + al_num + ", item_count="
				+ item_count + "]";
	}

}
