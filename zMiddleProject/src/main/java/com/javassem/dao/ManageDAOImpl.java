package com.javassem.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javassem.domain.ManageVO;
import com.javassem.domain.RegisterDetailVO;
import com.javassem.domain.RegisterFlavorVO;

@Repository("manageDAO") // 서비스에서 선언한 manageDAO
public class ManageDAOImpl implements ManageDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertProduct(ManageVO vo) {
	//	System.out.println("Mybatis insertProduct 호출");
		mybatis.insert("ManageDAO.insertProduct" ,vo);
	}

	@Override
	public List<ManageVO> selectProduct(ManageVO vo) {
	//	System.out.println("Mybatis selectProduct 호출");
		
		List<ManageVO> list = mybatis.selectList("ManageDAO.selectProduct");
		
	//	System.out.println(list);
		return list;
	}

	@Override
	public void modifyProduct(ManageVO vo) {
	//	System.out.println("Mybatis modifyProduct 호출");
		mybatis.update("ManageDAO.modifyProduct", vo);
	}

	@Override
	public void deleteProduct(ManageVO vo) {
	//	System.out.println("Mybatis deleteProduct 호출");
		int result = mybatis.delete("ManageDAO.deleteProduct", vo);
			
	}

	@Override
	public ManageVO selectProductByPk(ManageVO vo) {
		return mybatis.selectOne("ManageDAO.selectProductByPk",vo);
	}

	@Override
	public void insertImage(RegisterDetailVO ivo) {
	//	System.out.println("Mybatis insertImage 호풀");
	//	System.out.println(ivo);
	  mybatis.insert("ManageDAO.insertImage",ivo);
	  mybatis.update("ManageDAO.updateOpic",ivo);
		
	}

	@Override
	public void insertFlavor(RegisterFlavorVO fvo) {
	//	System.out.println("Mybatis insertFlavor 호출");
		mybatis.insert("ManageDAO.insertFlavor", fvo);
	}

	@Override
	public void deleteImage(RegisterDetailVO ivo) {
	//	System.out.println("Mybatis deleteImage 호출");
		int result = mybatis.delete("ManageDAO.deleteImage", ivo);
		if(result==1) {
			mybatis.update("ManageDAO.deleteOpic",ivo);
		}
	}

	@Override
	public void deleteFlavor(RegisterFlavorVO fvo) {
	//	System.out.println("Mybatis deleteFlavor 호출");
		int result = mybatis.delete("ManageDAO.deleteFlavor", fvo);

	}

}
