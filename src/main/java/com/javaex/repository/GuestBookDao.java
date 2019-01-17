package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.javaex.vo.GuestBookVo;

@Repository
public class GuestBookDao {

	@Autowired
	public SqlSession sqlSession;

	public List<GuestBookVo> selectGBList() {
		return sqlSession.selectList("guestbook.selectGBList");
	}

	public int insert(GuestBookVo guestbookVo) {
		return sqlSession.insert("guestbook.insertGB", guestbookVo);
	}

}
