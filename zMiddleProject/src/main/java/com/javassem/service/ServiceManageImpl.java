package com.javassem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javassem.dao.ManageDAO;
import com.javassem.dao.ManageDAOImpl;
import com.javassem.domain.ManageVO;
import com.javassem.domain.RegisterDetailVO;

@Service("serviceManage") // controller에서 선언한 serviceManage
public class ServiceManageImpl implements ManageDAO {

	@Autowired
	private ManageDAOImpl manageDAO;
	
	@Override
	public void insertProduct(ManageVO vo) {
		manageDAO.insertProduct(vo);
	}

	@Override
	public List<ManageVO> selectProduct(ManageVO vo) {	
		return manageDAO.selectProduct(vo);
	}

	@Override
	public void modifyProduct(ManageVO vo) {
		manageDAO.modifyProduct(vo);	
	}

	@Override
	public void deleteProduct(ManageVO vo) {
		manageDAO.deleteProduct(vo);	
	}

	@Override
	public ManageVO selectProductByPk(ManageVO vo) {
		return manageDAO.selectProductByPk(vo);
	}

	@Override
	public void insertImage(RegisterDetailVO ivo) {
		manageDAO.insertImage(ivo);
		
	}

}
