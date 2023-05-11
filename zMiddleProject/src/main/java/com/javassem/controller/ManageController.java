package com.javassem.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javassem.domain.ManageVO;
import com.javassem.domain.RegisterDetailVO;
import com.javassem.service.ServiceManageImpl;

@Controller
@RequestMapping("/manage")
public class ManageController {
	
		@Autowired
     	private ServiceManageImpl serviceManage;
		
		//메인 페이지 확인
		 @RequestMapping("/manageMain.do") 
		 public void main() {}
	
		//상품등록페이지로 이동
		@RequestMapping("/register.do") 
		public void register() {
			
		}
		
		//상품 등록
		@RequestMapping("/insertAC.do") // regist.jsp에 있는 insertAC를 누르면 등록 동작
		public String insertAC(ManageVO vo) {
			serviceManage.insertProduct(vo);
			return "redirect:register.do";
			
		}
		
		 //등록한 상품(전체) 검색
		
		@RequestMapping("/productList.do")
		public void select(ManageVO vo, Model m) {
			
			List<ManageVO> list = serviceManage.selectProduct(vo);
			m.addAttribute("alList", list);
		}
		
		//
		@RequestMapping("/charts.do")
		public void charts() {}
	
		//상품 수정 페이지 이동
		@RequestMapping("/productModify.do")
		public void productModifyForm(ManageVO vo, Model m) {
			
			ManageVO voList = serviceManage.selectProductByPk(vo);
			m.addAttribute("alVO", voList);
		}
		
		// 상품 수정
		@RequestMapping("/modify.do")
		public String modify(ManageVO vo) {
			serviceManage.modifyProduct(vo);
			return "redirect:productList.do";
		}
		 
		// 상품 삭제
		@RequestMapping("/delete.do")
		public String delte(ManageVO vo) {
			serviceManage.deleteProduct(vo);
			return "redirect:productList.do";
		}
		
		//상품 이미지 페이지 이동
		@RequestMapping("/registerDetail.do")
		public void alDetailForm(RegisterDetailVO ivo, Model m) {
			m.addAttribute("al_num",ivo.getAl_num());
		}
		
		//상품 이미지 등록
		@RequestMapping("/insertImage.do") 
		public String insertImage(RegisterDetailVO ivo, Model m) throws IOException {
			serviceManage.insertImage(ivo);
			return "redirect:registerDetail.do";
		}
		
}
