package com.javassem.service;

import java.util.List;

import com.javassem.domain.QnaListVO;

public interface ServiceQnA {
	
	List<QnaListVO> qnaList(QnaListVO vo); //문의관리(게시글)전체검색
}
