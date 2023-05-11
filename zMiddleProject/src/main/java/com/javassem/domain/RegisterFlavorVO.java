package com.javassem.domain;

public class RegisterFlavorVO {
	
	//주류별 맛 멤버변수 선언
	
	private Integer al_num;		//주류번호
	private Integer fl_danmat;	//단맛
	private Integer fl_sinmat;	//신맛
	private Integer fl_tansan;	//탄산
	private Integer fl_body;	//바디감(떫은맛)
	
	// Getter and Setter선언
	
	public Integer getAl_num() {
		return al_num;
	}
	public void setAl_num(Integer al_num) {
		this.al_num = al_num;
	}
	public Integer getFl_danmat() {
		return fl_danmat;
	}
	public void setFl_danmat(Integer fl_danmat) {
		this.fl_danmat = fl_danmat;
	}
	public Integer getFl_sinmat() {
		return fl_sinmat;
	}
	public void setFl_sinmat(Integer fl_sinmat) {
		this.fl_sinmat = fl_sinmat;
	}
	public Integer getFl_tansan() {
		return fl_tansan;
	}
	public void setFl_tansan(Integer fl_tansan) {
		this.fl_tansan = fl_tansan;
	}
	public Integer getFl_body() {
		return fl_body;
	}
	public void setFl_body(Integer fl_body) {
		this.fl_body = fl_body;
	}
	
	
	//to String선언
	
	@Override
	public String toString() {
		return "RegisterFlavorVO [al_num=" + al_num + ", fl_danmat=" + fl_danmat + ", fl_sinmat=" + fl_sinmat
				+ ", fl_tansan=" + fl_tansan + ", fl_body=" + fl_body + "]";
	}

}
