package com.javaclass.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShopController {

	@RequestMapping("/shop")
	public void shop() {
		System.out.println("shop.do 실행");
	}
	
}
