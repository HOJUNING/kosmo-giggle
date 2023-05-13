package com.javassem.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javassem.domain.MChartVO;

@Repository("mchartDAOImpl")
public class MChartDAOImpl implements MChartDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<MChartVO> chartList() {
		List<MChartVO> list = mybatis.selectList("MChartDAO.selectChart");
		return list;
	}

}
