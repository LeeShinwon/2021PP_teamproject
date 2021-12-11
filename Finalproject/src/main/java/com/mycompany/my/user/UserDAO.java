package com.mycompany.my.user;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class UserDAO {
	@Autowired
	SqlSession sqlSession;


	public UserVO getUser(UserVO vo) {
		UserVO one = sqlSession.selectOne("tUser.getUser", vo);
		return one;
	}

	
	

}
