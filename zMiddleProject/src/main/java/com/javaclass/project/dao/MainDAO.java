package com.javaclass.project.dao;

import java.util.List;

import com.javaclass.project.domain.AlcoholDetailVO;
import com.javaclass.project.domain.AlcoholsPriceVO;
import com.javaclass.project.domain.CartVO;
import com.javaclass.project.domain.UsersVO;

public interface MainDAO {
	
	public UsersVO loginCheck(UsersVO vo);
	
	public List<CartVO> cartCheck(CartVO vo);
	
	public AlcoholsPriceVO selectAlcoholsByPk(AlcoholsPriceVO vo);
	
	public UsersVO idCheck(UsersVO vo);
	
	public void registUser(UsersVO vo);
	
	public List<AlcoholDetailVO> alcoholsList(AlcoholDetailVO vo);
	
	public AlcoholDetailVO alcoholDetail(AlcoholDetailVO vo);
	
	public void insertCart(CartVO vo);
	
	public void updateCart(CartVO vo);
	
	public CartVO howsCartItem(CartVO vo);
	
	public void deleteCartByPk(CartVO vo);
	
	public List<AlcoholDetailVO> selectCak(AlcoholDetailVO vo);
	
	public List<AlcoholDetailVO> selectSale(AlcoholDetailVO vo);
	
	public List<AlcoholDetailVO> selectAll(AlcoholDetailVO vo);
	
	public List<AlcoholDetailVO> selectMini(AlcoholDetailVO vo);
	
	
}
 