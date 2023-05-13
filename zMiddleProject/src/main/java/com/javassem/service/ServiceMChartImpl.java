package com.javassem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javassem.dao.MChartDAOImpl;
import com.javassem.domain.MChartVO;

@Service("serviceMChartImpl")
public class ServiceMChartImpl implements ServiceMChart {
	
	@Autowired
	private MChartDAOImpl mchartDAOImpl;
	
	@Override
	public List<MChartVO> chartList() {
		
		return mchartDAOImpl.chartList();
	}

}
