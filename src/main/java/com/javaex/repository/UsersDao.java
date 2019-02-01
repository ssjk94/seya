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
		System.out.println("Dao왔음?");
		System.out.println(usersVo.login());
		return sqlSession.selectOne("users.selectUserLogin", usersVo);
	}

	public void userUpdate(UsersVo usersVo) {
		
		sqlSession.update("users.updateUsers", usersVo);
	}

	public UsersVo selectOneUsers(UsersVo usersVo) {
		 
		return sqlSession.selectOne("users.selectOneUsers", usersVo); 
	}

}
