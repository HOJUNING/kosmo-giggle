package com.javaclass.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CartController {
	
	@RequestMapping("/cart")
	public void cart() {
		System.out.println("cart.do 실행");
	}
	
	@RequestMapping("/checkout")
	public void checkout() {
		System.out.println("checkout 실행");
	}

}
