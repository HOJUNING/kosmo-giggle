package com.javaclass.project.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaclass.project.domain.AlcoholsPriceVO;
import com.javaclass.project.domain.CartVO;
import com.javaclass.project.domain.UsersVO;
import com.javaclass.project.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return step;
	}
	
	@RequestMapping("/shopSubCate.do")
	public void shopSubCate(int ki_num) {
		System.out.println("/shopSubCate 실행 : " + ki_num);
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession sess) {
		sess.removeAttribute("user_name");
		return "redirect:index.do";
	}
	
	@RequestMapping("/loginCheck.do")
	public String loginCheck(UsersVO vo, HttpSession sess) {
		UsersVO checkVO = mainService.loginCheck(vo);
		
		if(checkVO==null) {
			return "redirect:login.do";
		}else {
			List<CartVO> list = mainService.cartCheck(checkVO.getUser_num());
			if(list.isEmpty()) {
				sess.setAttribute("countCA", 0);
				sess.setAttribute("priceCA", 0);
			}else {
				sess.setAttribute("countCA", list.size());
				int sumPrice = 0;
				for(CartVO cv: list) {
					AlcoholsPriceVO alVO = mainService.selectAlcoholsByPk(cv.getAl_num());
					int thisAlprice = alVO.getAl_price() + alVO.getAl_price() * alVO.getEvt_per();
					sumPrice += thisAlprice * cv.getCa_count();
				}
				
				sess.setAttribute("priceCA", sumPrice);
			}
			
			
			sess.setAttribute("user_name", checkVO.getUser_name());
		}
		
		return "redirect:index.do";
		
	}
	
	@RequestMapping(value="idCheck.do",produces="application/text;charset=UTF-8")
	// ********************************
	// 비동기통신을 하기 위해
	@ResponseBody
	public String idCheck(UsersVO vo) {
		System.out.println("idCheck.do 요청 확인");
		
		UsersVO result = mainService.idCheck(vo);
		String message = "사용가능한 아이디입니다. 사용하시겠습니까?";
		
		if( result!= null ) {
			message = "이미 사용중인 아이디입니다";
		}
		return message;
	}
}
