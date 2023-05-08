package com.javaclass.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShopController {

	@RequestMapping("/shop")
	public void shop() {
		System.out.println("shop.do 실행");
	}
	
	@RequestMapping("/shopCate")
	public void shopCate() {
		System.out.println("shopCate.do 실행");
	}
	
	@RequestMapping("/shopSubCate")
	public void shopSubCate(int ki_num) {
		System.out.println("/shopSubCate 실행 : " + ki_num);
	}
	
}
