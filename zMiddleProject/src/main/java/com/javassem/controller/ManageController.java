package com.javassem.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javassem.domain.ManageVO;
import com.javassem.domain.RegisterDetailVO;
import com.javassem.domain.RegisterFlavorVO;
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
		public void register() {}
		
		//상품 등록
		@RequestMapping("/insertAC.do") // regist.jsp에 있는 상품등록 누르면 동작
		public String insertAC(ManageVO vo) {
			serviceManage.insertProduct(vo);
			return "redirect:register.do";
		}
		
		 //등록한 상품(전체) 검색
		
		@RequestMapping("/productList.do") // 등록된 상품의 전체가 검색되어 리스트로 검색
		public void select(ManageVO vo, Model m) {			
			List<ManageVO> list = serviceManage.selectProduct(vo);
			m.addAttribute("alList", list);
		}
		
		//상품 수정 페이지 이동
		@RequestMapping("/productModify.do")
		public void productModifyForm(ManageVO vo, Model m) {
			ManageVO voList = serviceManage.selectProductByPk(vo);
			m.addAttribute("alVO", voList);
		}
		
		// 상품 수정
		@RequestMapping("/modify.do") //productModify.jsp에 있는 수정버튼 누르면 동작
		public String modify(ManageVO vo) {
			serviceManage.modifyProduct(vo);
			return "redirect:productList.do";
		}
		 
		
		  // 상품 삭제 페이지 이동
		  @RequestMapping("deletePage.do") //productList.jsp에 있는 삭제버튼 누르면 삭제 페이지로 이동
		  public void deletePage(ManageVO vo,Model m) {
			  m.addAttribute("al_num", vo.getAl_num());
		  }
		 
		// 상품 삭제 
		@RequestMapping("/delete.do") //deletePage.jsp에 있는 상품삭제 버튼 누르면 상품 삭제 진행
		public String delete(ManageVO vo) {
			serviceManage.deleteProduct(vo);
			return "redirect:productList.do?al_num="+vo.getAl_num();
		}
		
		//상품 이미지 삭제
		@RequestMapping("/deleteImage.do") // deletePage.jsp에 있는 이미지 삭제 버튼 누르면 등록된 이미지 삭제
		public String deleteImage(RegisterDetailVO ivo) {
			serviceManage.deleteImage(ivo);
			return "redirect:deletePage.do?al_num="+ivo.getAl_num();
		}
		
		//상품 맛 삭제
		@RequestMapping("/deleteFlavor.do") // deletePage.jsp에 있는 맛삭제 버튼 누르면 등록된 상품별 맛 레코드들이 삭제
		public String deleteFlavor(RegisterFlavorVO fvo) {
			serviceManage.deleteFlavor(fvo);
			return "redirect:deletePage.do?al_num="+fvo.getAl_num();
		}
		
		//상품 이미지 등록 페이지 이동
		@RequestMapping("/registerDetail.do") // productModify.jsp에 있는 상품별 이미지 등록 페이지로 이동
		public void alDetailForm(RegisterDetailVO ivo, Model m) {
			m.addAttribute("al_num",ivo.getAl_num());
		}
		
		//상품 이미지 등록
		@RequestMapping("/insertImage.do") //registerDetail.jsp에 있는 이미지 버튼 누르면 이미지 등록됨
		public String insertImage(RegisterDetailVO ivo, Model m) throws IOException {
			serviceManage.insertImage(ivo);
			return "redirect:registerDetail.do";
		}
		
		//상품 맛 페이지 이동
		@RequestMapping("/registerFlavor.do") // productModify.jsp에 있는 상품별 맛 등록 페이지로 이동
		public void flavorForm(RegisterFlavorVO fvo, Model m){
			m.addAttribute("al_num",fvo.getAl_num());
		}
		
		//상품 맛 등록
		@RequestMapping("/insertFlavor.do") //registerFlavor.jsp에 있는 맛등록 버튼 누르면 맛 등록됨
		public String insertFlavor(RegisterFlavorVO fvo) {
			serviceManage.insertFlavor(fvo);
			return "redirect:productList.do";
		}
		
}
