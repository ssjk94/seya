package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.URLPathVo;
import com.javaex.vo.WordbookVo;


@Repository
public class WordbookDao {

	@Autowired
	public SqlSession sqlSession;
	
		//기본 첫 디렉토리 단어장을 보여주는 리스트
		public List<WordbookVo> selectDefaultWordbookList(URLPathVo urlPathVo){
			return sqlSession.selectList("wordbook.selectDefaultWordbookList",urlPathVo);
		}
		
		//디렉토리 눌렀을때 단어장을 보여주는 리스트
		public List<WordbookVo> selectDirectoryWordbookList(URLPathVo urlPathVo){
			return sqlSession.selectList("wordbook.selectdirectoryWordbookList",urlPathVo);
		}
	
		public void deleteWordbook(URLPathVo urlPathVo) {
			sqlSession.delete("wordbook.deleteWordbook", urlPathVo);
		}
		public void deleteWord(URLPathVo urlPathVo) {
			sqlSession.delete("wordbook.deleteWord", urlPathVo);
		}
		//닉네임 조회 셀렉트
		public URLPathVo selectOneNickName(URLPathVo urlPathVo) {
			return sqlSession.selectOne("wordbook.selectOneNickName", urlPathVo);
		}
		
		//디렉토리 보여주는 리스트
		public List<WordbookVo> selectWordbookAlldirectoryList(URLPathVo urlPathVo){
			return sqlSession.selectList("wordbook.selectWordbookAlldirectoryList",urlPathVo);
		}
		
		
}
