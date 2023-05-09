package com.javaclass.project.dao;

import java.util.List;

import com.javaclass.project.domain.AlcoholsPriceVO;
import com.javaclass.project.domain.AlcoholsVO;
import com.javaclass.project.domain.CartVO;
import com.javaclass.project.domain.UsersVO;

public interface MainDAO {
	
	public UsersVO loginCheck(UsersVO vo);
	
	public List<CartVO> cartCheck(CartVO vo);
	
	public AlcoholsPriceVO selectAlcoholsByPk(AlcoholsPriceVO vo);
	
	public UsersVO idCheck(UsersVO vo);
}
 