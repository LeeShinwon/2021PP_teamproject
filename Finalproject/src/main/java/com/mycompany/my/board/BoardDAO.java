package com.mycompany.my.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	@Autowired
	SqlSession sqlSession;

	public int insertBoard(BoardSubjectVO vo) {
		int result = sqlSession.insert("mapper.insertBoard", vo);
		return result;
	}

	public BoardSubjectVO getBoard(int seq) {
		BoardSubjectVO one = sqlSession.selectOne("mapper.getBoard", seq);
		return one;
	}

	public List<BoardSubjectVO> getBoardList() {
		List<BoardSubjectVO> list = sqlSession.selectOne("mapper.getBoardList");
		return list;
	}
}
