package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.UsersDao;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.UsersVo;
import com.javaex.vo.VocabularyListVo;
import com.javaex.vo.WordbookVo;

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

	public int idCheck(String id) {
		
		return usersDao.selectIdCheck(id);
	}

	public int emailCheck(String email) {
		
		return usersDao.selectEmailCheck(email);
	}

	public int nicknameCheck(String nickname) {
		
		return usersDao.selectNicknameCheck(nickname);
	}

	public int insertDirectory(UsersVo usersVo) {
		
		return usersDao.insertDirectory(usersVo);
	}

	public int insertWordBook(UsersVo usersVo) {
		
		return usersDao.insertWordBook(usersVo);
	}

	public List<WordbookVo> selectSearch(WordbookVo wordbookVo) {
		// TODO Auto-generated method stub
		return  usersDao.selectSearch(wordbookVo);
	}


	public List<VocabularyListVo> searchWordMeanList(int wordbookNo) {
		// TODO Auto-generated method stub
		return usersDao.selectWordMeanList(wordbookNo);
	}

	public URLPathVo getNickName2(UsersVo usersVo) {
        return usersDao.selectOneNickName2(usersVo);
    }

	public URLPathVo getNickName(URLPathVo urlPathVo) {
        return usersDao.selectOneNickName(urlPathVo);
    }
}
