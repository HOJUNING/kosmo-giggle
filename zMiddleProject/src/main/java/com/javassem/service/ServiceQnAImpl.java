package com.javassem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javassem.dao.QnADAOImpl;
import com.javassem.domain.QnaListVO;

@Service("serviceQnAImpl")
public class ServiceQnAImpl implements ServiceQnA {
	
	@Autowired
	private QnADAOImpl qnaDAOImpl;
	
	@Override//문의관리(게시글)전체검색
	public List<QnaListVO> qnaList(QnaListVO vo) {
		
		return qnaDAOImpl.qnaList(vo);
	}

}
