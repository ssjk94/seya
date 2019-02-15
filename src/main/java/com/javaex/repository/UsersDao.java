package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;


import com.javaex.vo.UsersVo;

@Repository
public class UsersDao {
	
	@Autowired
	public SqlSession sqlSession;

	public List<UsersVo> selectUsersList() {
		return sqlSession.selectList("users.selectUsersList");
	}

	public int insertUsers(UsersVo usersVo) {
		return sqlSession.insert("users.insertUsers", usersVo);
	}
	public UsersVo userLogin(UsersVo usersVo) {
	
		return sqlSession.selectOne("users.selectUserLogin", usersVo);
	}

	public void userUpdate(UsersVo usersVo) {
		
		sqlSession.update("users.updateUsers", usersVo);
	}

	public UsersVo selectOneUsers(UsersVo usersVo) {
		
		System.out.println("에오"+sqlSession.selectOne("users.selectOneUsers", usersVo).toString());
		return sqlSession.selectOne("users.selectOneUsers", usersVo); 
	}
	
	public UsersVo selectSession(UsersVo usersVo) {
		
		return sqlSession.selectOne("users.selectSession", usersVo);
	}

	public List<UsersVo> selectSearchAjax(String nickname) {
		
		return sqlSession.selectList("users.selectSearchAjax", nickname);
	}

}
