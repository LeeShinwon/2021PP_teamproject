package com.mycompany.my.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServicelmpl implements BoardService {
	@Autowired
	BoardDAO boardDAO;

	@Override
	public int insertBoard(BoardSubjectVO vo) {
		return boardDAO.insertBoard(vo);
	}

//	@Override
//	public int deleteBoard(int id) {
//		// TODO Auto-generated method stub
//		return 0;
//	}
//
//	@Override
//	public int updateBoard(BoardSubjectVO vo) {
//		// TODO Auto-generated method stub
//		return 0;
//	}

	@Override
	public BoardSubjectVO getBoard(int seq) {
		return boardDAO.getBoard(seq);
	}

	@Override
	public List<BoardSubjectVO> getBoardList() {
		return boardDAO.getBoardList();
	}

}
