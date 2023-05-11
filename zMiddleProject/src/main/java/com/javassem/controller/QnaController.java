package com.javassem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javassem.domain.QnaListVO;
import com.javassem.service.ServiceQnAImpl;


@Controller
@RequestMapping("/manage")
public class QnaController {
	
	@Autowired
	private ServiceQnAImpl serviceQnAImpl;
	
	// 게시판 페이지 불러오기
	@RequestMapping("/tables.do")
	public void qnaList(QnaListVO vo, Model m){
		List<QnaListVO> list = serviceQnAImpl.qnaList(vo);
		m.addAttribute("qnaList",list);
		System.out.println("컨트롤 받아온 리스트 값 출력================>");
		System.out.println(list.toString());
	}

}
