package com.javassem.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javassem.domain.MChartVO;
import com.javassem.domain.ManageVO;
import com.javassem.domain.RegisterDetailVO;
import com.javassem.domain.RegisterFlavorVO;
import com.javassem.service.ServiceMChartImpl;
import com.javassem.service.ServiceManageImpl;

@Controller
@RequestMapping("/manage")
public class ManageController {
		
	    //재고관리 service
		@Autowired
     	private ServiceManageImpl serviceManage;
		
		//차트service
		@Autowired
		private ServiceMChartImpl serviceMChartImpl;
		
		//관리자 메인 페이지 확인
		//관리자 페이지에서 출력되는 차트 컨트롤러
		 @RequestMapping("/manageMain.do") 
		 public void main(Model m) {
			 List<MChartVO> list = serviceMChartImpl.chartList();
				int su = 1;
				for(MChartVO vo : list) {
					m.addAttribute("mon"+su,vo.getOr_totalprice());
					su++;
				}
		 }
	
		//상품등록페이지로 이동
		@RequestMapping("/register.do") 
		public void register() {}
		
		//상품 등록
		//상품등록 페이지에 있는 상품등록 누르면 동작
		@RequestMapping("/insertAC.do")
		public String insertAC(ManageVO vo) {
			serviceManage.insertProduct(vo);
			return "redirect:register.do";
		}
		
		 //등록한 상품(전체) 검색
		//등록된 상품의 전체가 검색되어 리스트로 검색
		@RequestMapping("/productList.do")
		public void select(ManageVO vo, Model m) {			
			List<ManageVO> list = serviceManage.selectProduct(vo);
			m.addAttribute("alList", list);
		}
		
		//상품 수정 페이지 이동
		// 해당 상품에 수정버튼 누를시 수정페이지로 이동
		@RequestMapping("/productModify.do")
		public void productModifyForm(ManageVO vo, Model m) {
			ManageVO voList = serviceManage.selectProductByPk(vo);
			m.addAttribute("alVO", voList);
		}
		
		// 상품 수정
		//상품 수정페이지에 있는 수정버튼 누르면 동작
		@RequestMapping("/modify.do")
		public String modify(ManageVO vo) {
			serviceManage.modifyProduct(vo);
			return "redirect:productList.do";
		}
		 
		
		 // 상품 삭제 페이지 이동
		//전체상품리스트에 있는 삭제버튼 누르면 삭제 페이지로 이동
		 @RequestMapping("deletePage.do")
		 public void deletePage(ManageVO vo,Model m) {
			 m.addAttribute("al_num", vo.getAl_num());
		 }
		 
		// 상품 삭제 
		//삭제페이지에 있는 상품비활성 버튼 누르면 재고상태가 '준비중'으로 변경
		@RequestMapping("/delete.do")
		public String delete(ManageVO vo) {
			serviceManage.deleteProduct(vo);
			return "redirect:productList.do?al_num="+vo.getAl_num();
		}
		
		//상품 이미지 삭제
		// 삭제페이지에 있는 이미지 삭제 버튼 누르면 등록된 이미지 삭제
		@RequestMapping("/deleteImage.do") 
		public String deleteImage(RegisterDetailVO ivo) {
			serviceManage.deleteImage(ivo);
			return "redirect:deletePage.do?al_num="+ivo.getAl_num();
		}
		
		//상품 맛 삭제
		//삭제페이지에 있는 맛삭제 버튼 누르면 등록된 상품별 맛 레코드들이 삭제
		@RequestMapping("/deleteFlavor.do") 
		public String deleteFlavor(RegisterFlavorVO fvo) {
			serviceManage.deleteFlavor(fvo);
			return "redirect:deletePage.do?al_num="+fvo.getAl_num();
		}
		
		//상품 이미지 등록 페이지 이동
		//전체상품리스트에 있는 상품별 이미지 등록 페이지로 이동
		@RequestMapping("/registerDetail.do") 
		public void alDetailForm(RegisterDetailVO ivo, Model m) {
			m.addAttribute("al_num",ivo.getAl_num());
		}
		
		//상품 이미지 등록
		//이미지 등록페이지에 있는 이미지 버튼 누르면 이미지 등록됨
		@RequestMapping("/insertImage.do") 
		public String insertImage(RegisterDetailVO ivo, Model m) throws IOException {
			serviceManage.insertImage(ivo);
			return "redirect:registerDetail.do";
		}
		
		//상품 맛 페이지 이동
		//전체상품리스트에에 있는 상품별 맛등록 버튼을 통해 맛 등록 페이지로 이동
		@RequestMapping("/registerFlavor.do") 
		public void flavorForm(RegisterFlavorVO fvo, Model m){
			m.addAttribute("al_num",fvo.getAl_num());
		}
		
		//상품 맛 등록
		//맛등록페이지에 있는 맛등록 버튼 누르면 맛 등록됨
		@RequestMapping("/insertFlavor.do") 
		public String insertFlavor(RegisterFlavorVO fvo) {
			serviceManage.insertFlavor(fvo);
			return "redirect:productList.do";
		}
		
}
