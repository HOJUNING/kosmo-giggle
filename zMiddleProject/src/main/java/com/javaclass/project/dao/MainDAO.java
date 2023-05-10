package com.javaclass.project.dao;

import java.util.List;

import com.javaclass.project.domain.AlcoholDetailVO;
import com.javaclass.project.domain.AlcoholsPriceVO;
import com.javaclass.project.domain.AlcoholsVO;
import com.javaclass.project.domain.CartVO;
import com.javaclass.project.domain.UsersVO;

public interface MainDAO {
	
	public UsersVO loginCheck(UsersVO vo);
	
	public List<CartVO> cartCheck(CartVO vo);
	
	public AlcoholsPriceVO selectAlcoholsByPk(AlcoholsPriceVO vo);
	
	public UsersVO idCheck(UsersVO vo);
	
	public void registUser(UsersVO vo);
	
	public List<AlcoholsVO> alcoholsList(AlcoholsVO vo);
	
	public AlcoholDetailVO alcoholDetail(AlcoholDetailVO vo);
	
	public void insertCart(CartVO vo);
	
	public void updateCart(CartVO vo);
	
	public CartVO howsCartItem(CartVO vo);
	
	public void deleteCartByPk(CartVO vo);
	
	
}
 