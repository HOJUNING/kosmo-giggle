package com.javassem.dao;

import java.util.List;

import com.javassem.domain.ManageVO;
import com.javassem.domain.RegisterDetailVO;
import com.javassem.domain.RegisterFlavorVO;

public interface ManageDAO {
	public void insertProduct(ManageVO vo); 			// 상품등록
	public List<ManageVO> selectProduct(ManageVO vo);	// 전체상품검색
	public ManageVO selectProductByPk(ManageVO vo);		// 상품별검색
	public void modifyProduct(ManageVO vo);				// 상품수정
	public void deleteProduct(ManageVO vo);				// 재고상태비활성
	
	public void insertImage(RegisterDetailVO ivo);		// 상품이미지 등록
	public void deleteImage(RegisterDetailVO ivo);		// 상품이미지 삭제
	
	public void insertFlavor(RegisterFlavorVO fvo);		// 맛(당도) 등록
	public void deleteFlavor(RegisterFlavorVO fvo);		// 맛(당도) 삭제
}
