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

	@Override // 상품등록
	public void insertProduct(ManageVO vo) {
	//	System.out.println("Mybatis insertProduct 호출");
		mybatis.insert("ManageDAO.insertProduct" ,vo);
	}

	@Override // 전체상품검색
	public List<ManageVO> selectProduct(ManageVO vo) {
	//	System.out.println("Mybatis selectProduct 호출");
	List<ManageVO> list = mybatis.selectList("ManageDAO.selectProduct");
	//	System.out.println(list);
		return list;
	}

	@Override // 상품수정
	public void modifyProduct(ManageVO vo) {
	//	System.out.println("Mybatis modifyProduct 호출");
		mybatis.update("ManageDAO.modifyProduct", vo);
	}

	@Override // 재고상태 비활성
	public void deleteProduct(ManageVO vo) {
	//	System.out.println("Mybatis deleteProduct 호출");
		int result = mybatis.delete("ManageDAO.deleteProduct", vo);
			
	}

	@Override // 상품별검색
	public ManageVO selectProductByPk(ManageVO vo) {
		return mybatis.selectOne("ManageDAO.selectProductByPk",vo);
	}

	@Override // 상품이미지 등록
	public void insertImage(RegisterDetailVO ivo) {
	//	System.out.println("Mybatis insertImage 호풀");
	//	System.out.println(ivo);
	  mybatis.insert("ManageDAO.insertImage",ivo);
	  mybatis.update("ManageDAO.updateOpic",ivo);
		
	}

	@Override // 맛(당도) 등록
	public void insertFlavor(RegisterFlavorVO fvo) {
	//	System.out.println("Mybatis insertFlavor 호출");
		mybatis.insert("ManageDAO.insertFlavor", fvo);
	}

	@Override // 상품이미지 삭제
	public void deleteImage(RegisterDetailVO ivo) {
	//	System.out.println("Mybatis deleteImage 호출");
		int result = mybatis.delete("ManageDAO.deleteImage", ivo);
		if(result==1) {
			mybatis.update("ManageDAO.deleteOpic",ivo);
		}
	}

	@Override // 맛(당도) 삭제
	public void deleteFlavor(RegisterFlavorVO fvo) {
	//	System.out.println("Mybatis deleteFlavor 호출");
		int result = mybatis.delete("ManageDAO.deleteFlavor", fvo);

	}

}
