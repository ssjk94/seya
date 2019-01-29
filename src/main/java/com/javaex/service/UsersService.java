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

	public List<UsersVo> getList() {
		return usersDao.selectUsersList();
	}

	public int insertUser(UsersVo usersVo) {
		return usersDao.insertUsers(usersVo);
	}

}
