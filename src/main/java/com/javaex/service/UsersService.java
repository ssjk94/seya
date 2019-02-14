package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.UsersDao;
import com.javaex.vo.UsersVo;

@Service
public class UsersService {

	@Autowired
	UsersDao usersDao;
	public UsersVo selectOneUsers(UsersVo usersVo) {
		
		
		return usersDao.selectOneUsers(usersVo);
	}

	public List<UsersVo> getList() {
		return usersDao.selectUsersList();
	}

	public int insertUser(UsersVo usersVo) {
		return usersDao.insertUsers(usersVo);
	}
	
	public UsersVo userLogin(UsersVo usersVo) {
		
		return usersDao.userLogin(usersVo);
	}

	public void updateform(UsersVo usersVo) {
		
	 usersDao.userUpdate(usersVo);
	}
	public UsersVo selectSession(UsersVo usersVo) {
		
		return usersDao.selectSession(usersVo);
	}

	/*
	 * public List<UsersVo> selectSearchAjax(UsersVo usersVo, String result) {
	 * 
	 * return usersDao.selectSearchAjax(usersVo, result); }
	 */
	public List<UsersVo> selectSearchAjax(String nickname) {
		
		return usersDao.selectSearchAjax(nickname);
	}

}
