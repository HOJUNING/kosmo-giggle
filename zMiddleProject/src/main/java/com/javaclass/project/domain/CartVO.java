package com.javaclass.project.domain;

public class CartVO {
	
	private int ca_num;
	private int user_num;
	private int al_num;
	private int ca_count;
	private int al_price;
	private String al_name;
	private int hap_price;
	
	private String img_name; // 메인 이미지 이름
	private String img_realname; // 메인 이미지 리얼이름
	private int img_size; // 이미지 크기
	
	public String getImg_name() {
		return img_name;
	}
	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}
	public String getImg_realname() {
		return img_realname;
	}
	public void setImg_realname(String img_realname) {
		this.img_realname = img_realname;
	}
	public int getImg_size() {
		return img_size;
	}
	public void setImg_size(int img_size) {
		this.img_size = img_size;
	}
	public int getHap_price() {
		return hap_price;
	}
	public void setHap_price(int hap_price) {
		this.hap_price = hap_price;
	}
	public String getAl_name() {
		return al_name;
	}
	public void setAl_name(String al_name) {
		this.al_name = al_name;
	}
	public int getAl_price() {
		return al_price;
	}
	public void setAl_price(int al_price) {
		this.al_price = al_price;
	}
	public int getCa_num() {
		return ca_num;
	}
	public void setCa_num(int ca_num) {
		this.ca_num = ca_num;
	}
	public int getUser_num() {
		return user_num;
	}
	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}
	public int getAl_num() {
		return al_num;
	}
	public void setAl_num(int al_num) {
		this.al_num = al_num;
	}
	public int getCa_count() {
		return ca_count;
	}
	public void setCa_count(int ca_count) {
		this.ca_count = ca_count;
	}
	
	
}
