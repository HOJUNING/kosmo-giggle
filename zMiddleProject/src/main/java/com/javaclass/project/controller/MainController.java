package com.javaclass.project.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaclass.project.domain.AlcoholDetailVO;
import com.javaclass.project.domain.AlcoholsPriceVO;
import com.javaclass.project.domain.AlcoholsVO;
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
		}
		
		
		return "redirect:cartCheckIndex.do?user_num="+checkVO.getUser_num();
		
	}
	
	@RequestMapping(value="idCheck.do",produces="application/text;charset=UTF-8")
	// ********************************
	// 비동기통신을 하기 위해
	@ResponseBody
	public String idCheck(UsersVO vo) {
		
		UsersVO result = mainService.idCheck(vo);
		String message = "사용가능한 아이디입니다. 사용하시겠습니까?";
		
		if( result!= null ) {
			message = "이미 사용중인 아이디입니다";
		}
		return message;
	}
	
	@RequestMapping("/registUser.do")
	public String registUser(UsersVO vo) {
		mainService.registUser(vo);
		return "redirect:login.do";
	}
	
	@RequestMapping("/shopSubCate.do")
	public void shopSubCate(AlcoholsVO vo, Model m) {
		List<AlcoholsVO> list = mainService.alcoholsList(vo);
		
		m.addAttribute("alSubList", list);
		m.addAttribute("kiName",list.get(0).getKi_name());
		
	}
	
	@RequestMapping("/shopDetails.do")
	public void shopDetails(AlcoholDetailVO vo ,Model m) {
		AlcoholDetailVO result = mainService.alcoholDetail(vo);
		
		m.addAttribute("alDetail", result);
		
	}
	
	@RequestMapping("/insertCart.do")
	public String insertCart(CartVO vo) {
		List<CartVO> list = mainService.cartCheck(vo.getUser_num());
		
		boolean checkSame = false;
		
		for( CartVO cVO : list) {
			if(cVO.getAl_num()==vo.getAl_num()) {
				checkSame=true;
			}
		}
		
		if(checkSame) {
			mainService.updateCart(vo);
		}else {
			mainService.insertCart(vo);
		}
		
		int user_num= vo.getUser_num();
		
		return "redirect:cartCheckIndex.do?user_num="+user_num;
	}
	
	@RequestMapping("/cartCheckIndex.do")
	public String cartCheckIndex(UsersVO vo, HttpSession sess) {
		
		UsersVO result = mainService.idCheck(vo);
		int sumPrice = 0;
		
		
		List<CartVO> list = mainService.cartCheck(result.getUser_num());
		if(list.isEmpty()) {
			sess.setAttribute("countCA", 0);
			sess.setAttribute("priceCA", 0);
		}else {
			sess.setAttribute("countCA", list.size());
			for(CartVO cv: list) {
				AlcoholsPriceVO alVO = mainService.selectAlcoholsByPk(cv.getAl_num());
				int thisAlprice = alVO.getAl_price() + alVO.getAl_price() * alVO.getEvt_per();
				sumPrice += thisAlprice * cv.getCa_count();
				
			}
			
			sess.setAttribute("priceCA", sumPrice);
		}
		
		
		sess.setAttribute("user_name", result.getUser_name());
		sess.setAttribute("user_num", result.getUser_num());
		
		
		return "redirect:index.do";
	}
	
	@RequestMapping("/cart.do")
	public void cart(CartVO vo, Model m){
		
		List<CartVO> list = mainService.cartCheck(vo.getUser_num());
		
		int totalPrice = 0;
		
		for( CartVO cVO : list) {
			cVO.setHap_price(cVO.getAl_price() * cVO.getCa_count());
			totalPrice+=cVO.getHap_price();
		}
		
		int textPrice = 3000;
		if(totalPrice>=50000) {
			textPrice=0;
		}
		int finalPrice = totalPrice+textPrice;
		
		m.addAttribute("cartList", list);
		m.addAttribute("totalPrice",totalPrice);
		m.addAttribute("textPrice",textPrice);
		m.addAttribute("finalPrice",finalPrice);
		
	}
	
	@RequestMapping("/deleteCartByPk.do")
	public String deleteCartByPk(CartVO vo) {
		CartVO result = mainService.howsCartItem(vo);
		mainService.deleteCartByPk(vo);
		

		return "redirect:cartCheckCart.do?user_num="+result.getUser_num();
	}
	
	@RequestMapping("/cartCheckCart.do")
	public String cartCheckCart(UsersVO vo, HttpSession sess) {
		
		UsersVO result = mainService.idCheck(vo);
		int sumPrice = 0;
		
		
		List<CartVO> list = mainService.cartCheck(result.getUser_num());
		if(list.isEmpty()) {
			sess.setAttribute("countCA", 0);
			sess.setAttribute("priceCA", 0);
		}else {
			sess.setAttribute("countCA", list.size());
			for(CartVO cv: list) {
				AlcoholsPriceVO alVO = mainService.selectAlcoholsByPk(cv.getAl_num());
				int thisAlprice = alVO.getAl_price() + alVO.getAl_price() * alVO.getEvt_per();
				sumPrice += thisAlprice * cv.getCa_count();
				
			}
			
			sess.setAttribute("priceCA", sumPrice);
		}
		
		
		sess.setAttribute("user_name", result.getUser_name());
		sess.setAttribute("user_num", result.getUser_num());
		
		
		return "redirect:cart.do";
	}
	
	
}
