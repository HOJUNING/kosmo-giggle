package com.javassem.dao;

import java.util.List;

import com.javassem.domain.ManageVO;
import com.javassem.domain.RegisterDetailVO;
import com.javassem.domain.RegisterFlavorVO;

public interface ManageDAO {
	public void insertProduct(ManageVO vo);
	public List<ManageVO> selectProduct(ManageVO vo);
	public ManageVO selectProductByPk(ManageVO vo);
	public void modifyProduct(ManageVO vo);
	public void deleteProduct(ManageVO vo);
	
	public void insertImage(RegisterDetailVO ivo);
	public void deleteImage(RegisterDetailVO ivo);
	
	public void insertFlavor(RegisterFlavorVO fvo);
	public void deleteFlavor(RegisterFlavorVO fvo);
}
