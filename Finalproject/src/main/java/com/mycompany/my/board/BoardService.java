package com.mycompany.my.board;

import java.util.List;

public interface BoardService {
	public int insertBoard(BoardSubjectVO vo);

//	public int deleteBoard(int id);
//
//	public int updateBoard(BoardSubjectVO vo);

	public BoardSubjectVO getBoard(int seq);

	public List<BoardSubjectVO> getBoardList();
}
