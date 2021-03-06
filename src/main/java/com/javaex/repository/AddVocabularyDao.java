package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.URLPathVo;
import com.javaex.vo.WordbookVo;

@Repository
public class AddVocabularyDao {

	@Autowired
	SqlSession sqlSession;

	//디렉토리 보여주는 리스트
		public List<WordbookVo> selectWordbookAlldirectoryList(URLPathVo urlPathVo){
			return sqlSession.selectList("wordbook.selectWordbookAlldirectoryList",urlPathVo);
		}
		
		public URLPathVo selectDirectoryNoInfo(URLPathVo urlPathVo) {
			return sqlSession.selectOne("addvocabulary.selectDirectoryNoInfo",urlPathVo);
		}

		public URLPathVo selectOneNickName(URLPathVo urlPathVo) {
            return sqlSession.selectOne("wordbook.selectOneNickName", urlPathVo);
        }
}
