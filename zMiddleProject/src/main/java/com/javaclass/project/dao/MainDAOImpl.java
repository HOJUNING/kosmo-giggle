package com.javaclass.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
 
}
