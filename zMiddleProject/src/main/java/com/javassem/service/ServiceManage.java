package com.javassem.service;

import java.util.List;

import com.javassem.domain.ManageVO;
import com.javassem.domain.RegisterDetailVO;
import com.javassem.domain.RegisterFlavorVO;

public interface ServiceManage {
	
	void modifyProduct(ManageVO vo);			//상품수정
	
	void deleteProduct(ManageVO vo);			//상품비활성
	
	void insertProduct(ManageVO vo);			//상품등록
	
	List<ManageVO> selectProduct(ManageVO vo);	//상품 전체리스트검색
	
	ManageVO selectProductByPk(ManageVO vo);	//상품별 리스트검색
	
	void insertImage(RegisterDetailVO ivo);		//이미지 등록
	
	void deleteImage(RegisterDetailVO ivo);		//이미지 삭제
	
	void insertFlavor(RegisterFlavorVO fvo);	//맛(당도)등록
	
	void deleteFlavor(RegisterFlavorVO fvo);	//맛(당도)삭제
}
