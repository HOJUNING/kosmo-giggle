package com.javaclass.project.service;

import java.util.List;

import com.javaclass.project.domain.AlcoholDetailVO;
import com.javaclass.project.domain.AlcoholsPriceVO;
import com.javaclass.project.domain.AlcoholsVO;
import com.javaclass.project.domain.CartVO;
import com.javaclass.project.domain.UsersVO;

public interface MainService {

	public UsersVO loginCheck(UsersVO vo);
	
	public List<CartVO> cartCheck(int user_num);
	
	public AlcoholsPriceVO selectAlcoholsByPk(int al_num);
	
	public UsersVO idCheck(UsersVO vo);
	
	public void registUser(UsersVO vo);
	
	public List<AlcoholsVO> alcoholsList(AlcoholsVO vo);
	
	public AlcoholDetailVO alcoholDetail(AlcoholDetailVO vo);
	
	public void insertCart(CartVO vo);
	
	public void updateCart(CartVO vo);
	
	public CartVO howsCartItem(CartVO vo);
	
	public void deleteCartByPk(CartVO vo);
	
}
