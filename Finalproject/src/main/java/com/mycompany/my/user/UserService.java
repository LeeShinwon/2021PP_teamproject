package com.mycompany.my.user;

import java.util.List;

import com.mycompany.my.board.SubjectVO;

public interface UserService {
	public int insertUser(UserVO vo);

	public int deleteUser(int id);

	public int updateUser(UserVO vo);

	public UserVO getUser(int seq);

	public List<UserVO> getUserList();
}
