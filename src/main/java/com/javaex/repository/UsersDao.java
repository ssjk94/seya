package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;

import com.javaex.vo.HeaderSearchVo;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.UsersVo;
import com.javaex.vo.VocabularyListVo;
import com.javaex.vo.WordbookVo;

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

	public void userUpdate2(UsersVo usersVo) {
		
		sqlSession.update("users.updateUsers2", usersVo);
	}
	
	public UsersVo selectOneUsers(UsersVo usersVo) {
		
		return sqlSession.selectOne("users.selectOneUsers", usersVo); 
	}
	
	public UsersVo selectSession(UsersVo usersVo) {
		
		return sqlSession.selectOne("users.selectSession", usersVo);
	}

	public List<UsersVo> selectSearchAjax(String nickname) {
		
		return sqlSession.selectList("users.selectSearchAjax", nickname);
	}

	public int selectIdCheck(String id) {
	
		return sqlSession.selectOne("users.idCheck", id);
		
	}

	public int selectEmailCheck(String email) {
		
		return sqlSession.selectOne("users.emailCheck", email);
	}

	public int selectNicknameCheck(String nickname) {
		
		return sqlSession.selectOne("users.nicknameCheck", nickname);
	}

	public int insertDirectory(UsersVo usersVo) {
		
		return sqlSession.insert("users.insertDirectory", usersVo);
	}

	public int insertWordBook(UsersVo usersVo) {
		
		return sqlSession.insert("users.insertWordBook", usersVo);
	}

	public List<HeaderSearchVo> selectSearch(HeaderSearchVo headerSearchVo) {
		
		return sqlSession.selectList("users.selectSearch",headerSearchVo);
	}

	public List<HeaderSearchVo> selectWordMeanList(int wordbookNo) {
		
		return sqlSession.selectList("users.searchWordMeanList", wordbookNo);
	}

	public URLPathVo selectOneNickName2(UsersVo usersVo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("wordbook.selectOneNickName2", usersVo);
	}

	public URLPathVo selectOneNickName(URLPathVo urlPathVo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("wordbook.selectOneNickName", urlPathVo);
	}

	public int selectOneCountWordName(HeaderSearchVo headerSearchVo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("users.selectOneCountWordName", headerSearchVo);
	}





}
