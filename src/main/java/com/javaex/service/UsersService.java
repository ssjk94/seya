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
		System.out.println("서비스왔음?");
		System.out.println(usersVo.toString());
		
		return usersDao.userLogin(usersVo);
	}

	public void updateform(UsersVo usersVo) {
		
	 usersDao.userUpdate(usersVo);
	}
}
