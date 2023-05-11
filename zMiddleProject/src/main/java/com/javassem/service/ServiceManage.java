package com.javassem.service;

import java.util.List;

import com.javassem.domain.ManageVO;
import com.javassem.domain.RegisterDetailVO;

public interface ServiceManage {
	
	void modifyProduct(ManageVO vo);
	
	void deleteProduct(ManageVO vo);
	
	void insertProduct(ManageVO vo);
	
	List<ManageVO> selectProduct(ManageVO vo);
	
	ManageVO selectProductByPk(ManageVO vo);
	
	void insertImage(RegisterDetailVO ivo);
}
