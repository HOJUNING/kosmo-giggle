package com.javaclass.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.project.dao.MainDAO;
import com.javaclass.project.domain.AlcoholsPriceVO;
import com.javaclass.project.domain.AlcoholsVO;
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

}
