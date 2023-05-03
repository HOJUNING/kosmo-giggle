package com.javaclass.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShopDetailsController {
	
	@RequestMapping("/shopDetails")
	public void shopDetails() {
		System.out.println("shopDetails.do 실행");
	}

}
