package com.javaclass.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BlogController {
	
	@RequestMapping("/blog")
	public void blog() {
		System.out.println("blog.do 실행");
	}
	
}