package com.javassem.dao;

import java.util.List;


import com.javassem.domain.QnaListVO;

public interface QnADAO { 
	public List<QnaListVO> qnaList(QnaListVO vo); //문의내역(게시글) 전체 검색

}
