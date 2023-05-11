package com.javassem.domain;

public class ManageVO {

	//주류상품정보 멤버변수선언
	
	private Integer al_num;    // 주류번호
	private Integer ki_num;    // 종류번호
	private Integer ma_num;    // 양조장번호
	private Integer evt_num;   // 이벤트 번호
	private String  al_name;   // 주류이름
	private Integer al_price;  // 가격
	private Integer al_volume; // 용량
	private Integer al_abv;    // 도수 
	private Integer al_stock;  // 재고
	private String  al_status; // 재고상태
	private String  al_opic;   // 주류이미지여부
	
	
	// Getter and Setter 선언
	public Integer getAl_num() {
		return al_num;
	}
	public void setAl_num(Integer al_num) {
		this.al_num = al_num;
	}
	public Integer getKi_num() {
		return ki_num;
	}
	public void setKi_num(Integer ki_num) {
		this.ki_num = ki_num;
	}
	public Integer getMa_num() {
		return ma_num;
	}
	public void setMa_num(Integer ma_num) {
		this.ma_num = ma_num;
	}
	public Integer getEvt_num() {
		return evt_num;
	}
	public void setEvt_num(Integer evt_num) {
		this.evt_num = evt_num;
	}
	public String getAl_name() {
		return al_name;
	}
	public void setAl_name(String al_name) {
		this.al_name = al_name;
	}
	public Integer getAl_price() {
		return al_price;
	}
	public void setAl_price(Integer al_price) {
		this.al_price = al_price;
	}
	public Integer getAl_volume() {
		return al_volume;
	}
	public void setAl_volume(Integer al_volume) {
		this.al_volume = al_volume;
	}
	public Integer getAl_abv() {
		return al_abv;
	}
	public void setAl_abv(Integer al_abv) {
		this.al_abv = al_abv;
	}
	public Integer getAl_stock() {
		return al_stock;
	}
	public void setAl_stock(Integer al_stock) {
		this.al_stock = al_stock;
	}
	public String getAl_status() {
		return al_status;
	}
	public void setAl_status(String al_status) {
		this.al_status = al_status;
	}
	public String getAl_opic() {
		return al_opic;
	}
	public void setAl_opic(String al_opic) {
		this.al_opic = al_opic;
	}
	
	// toString 선언
	@Override
	public String toString() {
		return "ManageVO [al_num=" + al_num + ", ki_num=" + ki_num + ", ma_num=" + ma_num + ", evt_num=" + evt_num
				+ ", al_name=" + al_name + ", al_price=" + al_price + ", al_volume=" + al_volume + ", al_abv=" + al_abv
				+ ", al_stock=" + al_stock + ", al_status=" + al_status + ", al_opic=" + al_opic + "]";
	}
	
}
