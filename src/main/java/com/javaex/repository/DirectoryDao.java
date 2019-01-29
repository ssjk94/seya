package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.javaex.vo.DirectoryVo;

@Repository
public class DirectoryDao {

	@Autowired
	public SqlSession sqlSession;

	public List<DirectoryVo> selectDirectoryList() {
		return sqlSession.selectList("directory.selectDirectoryList");
	}

	public int insertDirectory(DirectoryVo directoryVo) {
		return sqlSession.insert("directory.insertDirectory", directoryVo);
	}

}
