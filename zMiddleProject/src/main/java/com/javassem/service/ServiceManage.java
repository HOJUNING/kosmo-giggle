package com.javassem.service;

import java.util.List;

import com.javassem.domain.ManageVO;
import com.javassem.domain.RegisterDetailVO;
import com.javassem.domain.RegisterFlavorVO;

public interface ServiceManage {
	
	void modifyProduct(ManageVO vo);
	
	void deleteProduct(ManageVO vo);
	
	void insertProduct(ManageVO vo);
	
	List<ManageVO> selectProduct(ManageVO vo);
	
	ManageVO selectProductByPk(ManageVO vo);
	
	void insertImage(RegisterDetailVO ivo);
	
	void deleteImage(RegisterDetailVO ivo);
	
	void insertFlavor(RegisterFlavorVO fvo);
	
	void deleteFlavor(RegisterFlavorVO fvo);
}
