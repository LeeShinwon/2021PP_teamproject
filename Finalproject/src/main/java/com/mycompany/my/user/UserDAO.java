package com.mycompany.my.user;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class UserDAO {
	@Autowired
	SqlSession sqlSession;

	public int insertUser(UserVO vo) {
		int result = sqlSession.insert("subuser.insertUser", vo);
		return result;
	}
	
	public int deleteUser(int id) {
		int result = sqlSession.delete("subuser.deleteUser", id);
		return result;
	}
	public int updateUser(UserVO vo) {
		int result = sqlSession.update("subuser.updateUser", vo);
		return result;
	}

	public UserVO getUser(int seq) {
		UserVO one = sqlSession.selectOne("subuser.getUser", seq);
		return one;
	}

	public List<UserVO> getUserList() {
		List<UserVO> list = sqlSession.selectList("subuser.getUserList");
		return list;
	}
}
