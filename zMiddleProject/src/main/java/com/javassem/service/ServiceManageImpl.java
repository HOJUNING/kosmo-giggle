package com.javassem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javassem.dao.ManageDAO;
import com.javassem.dao.ManageDAOImpl;
import com.javassem.domain.ManageVO;
import com.javassem.domain.RegisterDetailVO;
import com.javassem.domain.RegisterFlavorVO;

@Service("serviceManage") // controller에서 선언한 serviceManage
public class ServiceManageImpl implements ManageDAO {

	@Autowired
	private ManageDAOImpl manageDAO;
	
	//상품 등록
	@Override
	public void insertProduct(ManageVO vo) {
		manageDAO.insertProduct(vo);
	}

	//상품 전체검색
	@Override
	public List<ManageVO> selectProduct(ManageVO vo) {	
		return manageDAO.selectProduct(vo);
	}

	//상품 수정
	@Override
	public void modifyProduct(ManageVO vo) {
		manageDAO.modifyProduct(vo);	
	}

	// 상품 삭제
	@Override
	public void deleteProduct(ManageVO vo) {
		manageDAO.deleteProduct(vo);	
	}

	// 상품별 검색
	@Override
	public ManageVO selectProductByPk(ManageVO vo) {
		return manageDAO.selectProductByPk(vo);
	}

	// 상품 이미지 등록
	@Override
	public void insertImage(RegisterDetailVO ivo) {
		manageDAO.insertImage(ivo);	
	}

	// 상품 맛(당도)등록
	@Override
	public void insertFlavor(RegisterFlavorVO fvo) {
		manageDAO.insertFlavor(fvo);
	}

	// 상품 이미지 삭제
	@Override
	public void deleteImage(RegisterDetailVO ivo) {
		manageDAO.deleteImage(ivo);
		
	}

	// 상품 맛(당도)삭제
	@Override
	public void deleteFlavor(RegisterFlavorVO fvo) {
		manageDAO.deleteFlavor(fvo);
	}

}
