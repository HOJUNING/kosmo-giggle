package com.javaclass.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.project.domain.AlcoholDetailVO;
import com.javaclass.project.domain.AlcoholsPriceVO;
import com.javaclass.project.domain.CartVO;
import com.javaclass.project.domain.UsersVO;

@Repository("mainDAO")
public class MainDAOImpl implements MainDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public UsersVO loginCheck(UsersVO vo) {
		return mybatis.selectOne("project.mainMapper.loginCheck",vo);
		
	}

	@Override
	public List<CartVO> cartCheck(CartVO vo) {
		return mybatis.selectList("project.mainMapper.cartCheck",vo);
	}

	@Override
	public AlcoholsPriceVO selectAlcoholsByPk(AlcoholsPriceVO vo) {
		return mybatis.selectOne("project.mainMapper.selectAlcoholsByPk",vo);
	}

	@Override
	public UsersVO idCheck(UsersVO vo) {
		return mybatis.selectOne("project.mainMapper.idCheck",vo);
	}

	@Override
	public void registUser(UsersVO vo) {
		mybatis.insert("project.mainMapper.registUser",vo);
		
	}

	@Override
	public List<AlcoholDetailVO> alcoholsList(AlcoholDetailVO vo) {
		return mybatis.selectList("project.mainMapper.alcoholsList",vo);
	}

	@Override
	public AlcoholDetailVO alcoholDetail(AlcoholDetailVO vo) {
		return mybatis.selectOne("project.mainMapper.alcoholDetail",vo);
	}

	@Override
	public void insertCart(CartVO vo) {
		mybatis.insert("project.mainMapper.insertCart",vo);
	}

	@Override
	public void updateCart(CartVO vo) {
		mybatis.update("project.mainMapper.updateCart",vo);
	}

	@Override
	public CartVO howsCartItem(CartVO vo) {
		return mybatis.selectOne("project.mainMapper.howsCartItem",vo);
	}

	@Override
	public void deleteCartByPk(CartVO vo) {
		mybatis.delete("project.mainMapper.deleteCartByPk",vo);
		
	}

	@Override
	public List<AlcoholDetailVO> selectCak(AlcoholDetailVO vo) {
		return mybatis.selectList("project.mainMapper.selectCak",vo);
	}

	@Override
	public List<AlcoholDetailVO> selectSale(AlcoholDetailVO vo) {
		return mybatis.selectList("project.mainMapper.selectSale",vo);
	}

	@Override
	public List<AlcoholDetailVO> selectAll(AlcoholDetailVO vo) {
		return mybatis.selectList("project.mainMapper.selectAll",vo);
	}

	@Override
	public List<AlcoholDetailVO> selectMini(AlcoholDetailVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectList("project.mainMapper.selectMini",vo);
	}
	
	
 
}
