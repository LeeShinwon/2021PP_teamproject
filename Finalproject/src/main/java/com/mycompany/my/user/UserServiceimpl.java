package com.mycompany.my.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserServiceimpl implements UserService{
	@Autowired
	UserDAO userDAO;

	@Override
	public int insertUser(UserVO vo) {
		return userDAO.insertUser(vo);
	}

	@Override
	public int deleteUser(int id) {
		return userDAO.deleteUser(id);
	}

	@Override
	public int updateUser(UserVO vo) {
		return userDAO.updateUser(vo);
	}

	@Override
	public UserVO getUser(int seq) {
		return userDAO.getUser(seq);
	}

	@Override
	public List<UserVO> getUserList() {
		return userDAO.getUserList();
	}

	
}
