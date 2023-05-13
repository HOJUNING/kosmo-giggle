package com.javassem.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javassem.domain.QnaListVO;

@Repository("qnaDAOImpl")
public class QnADAOImpl implements QnADAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override //문의내역(게시글) 전체 검색
	public List<QnaListVO> qnaList(QnaListVO vo) {
		//System.out.println("ManageDAO.selectBoardAll 호출");
		List<QnaListVO> list = mybatis.selectList("ManageDAO.selectBoardAll");
		//System.out.println(list);
		return list;
	}

}
