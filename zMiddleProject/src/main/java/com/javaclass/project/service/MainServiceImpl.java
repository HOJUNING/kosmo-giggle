package com.javaclass.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.project.dao.MainDAO;
import com.javaclass.project.domain.AlcoholDetailVO;
import com.javaclass.project.domain.AlcoholsPriceVO;
import com.javaclass.project.domain.CartVO;
import com.javaclass.project.domain.UsersVO;

@Service("mainService")
public class MainServiceImpl implements MainService {

	@Autowired
	MainDAO mainDAO;
	
	@Override
	public UsersVO loginCheck(UsersVO vo) {
		return mainDAO.loginCheck(vo);
	}

	@Override
	public List<CartVO> cartCheck(int user_num) {
		CartVO vo = new CartVO();
		vo.setUser_num(user_num);
		return mainDAO.cartCheck(vo);
	}

	@Override
	public AlcoholsPriceVO selectAlcoholsByPk(int al_num) {
		AlcoholsPriceVO vo = new AlcoholsPriceVO();
		vo.setAl_num(al_num);
		return mainDAO.selectAlcoholsByPk(vo);
	}

	@Override
	public UsersVO idCheck(UsersVO vo) {
		return mainDAO.idCheck(vo);
	}

	@Override
	public void registUser(UsersVO vo) {
		mainDAO.registUser(vo);
		
	}

	@Override
	public List<AlcoholDetailVO> alcoholsList(AlcoholDetailVO vo) {
		return mainDAO.alcoholsList(vo);
	}

	@Override
	public AlcoholDetailVO alcoholDetail(AlcoholDetailVO vo) {
		return mainDAO.alcoholDetail(vo);
	}

	@Override
	public void insertCart(CartVO vo) {
		mainDAO.insertCart(vo);
		
	}

	@Override
	public void updateCart(CartVO vo) {
		mainDAO.updateCart(vo);
	}

	@Override
	public CartVO howsCartItem(CartVO vo) {
		return mainDAO.howsCartItem(vo);
	}

	@Override
	public void deleteCartByPk(CartVO vo) {
		mainDAO.deleteCartByPk(vo);
		
	}

	@Override
	public List<AlcoholDetailVO> selectCak(AlcoholDetailVO vo) {
		return mainDAO.selectCak(vo);
	}

	@Override
	public List<AlcoholDetailVO> selectSale(AlcoholDetailVO vo) {
		return mainDAO.selectSale(vo);
	}

	@Override
	public List<AlcoholDetailVO> selectAll(AlcoholDetailVO vo) {
		return mainDAO.selectAll(vo);
	}

	@Override
	public List<AlcoholDetailVO> selectMini(AlcoholDetailVO vo) {
		return mainDAO.selectMini(vo);
	}

}
