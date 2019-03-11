package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.URLPathVo;
import com.javaex.vo.VocabularyListVo;
import com.javaex.vo.WordbookVo;

@Repository
public class VocabularyListDao {

	@Autowired
	public SqlSession sqlSession;
	
	
	
	
	//단어장 만들기
	public void insertWordbook(URLPathVo urlPathVo){
		sqlSession.insert("vocabularylist.insertWordbook",urlPathVo);
	}
	//워드삽입
	public void insertWord(VocabularyListVo vocabularyListVo) {
		sqlSession.insert("vocabularylist.insertword",vocabularyListVo);
	}
	//워드와 워드 번호 가져오기
	public List<VocabularyListVo> selectWord(VocabularyListVo vocabularyListVo){
		return sqlSession.selectList("vocabularylist.selectword",vocabularyListVo);
	}
	//단어장 단어와 mean 추출
	public VocabularyListVo selectWordAndMean(VocabularyListVo vocabularyListVo){
		return sqlSession.selectOne("vocabularylist.selectWordAndMean",vocabularyListVo);
	}
	//업데이트
//	public void updateWordAndMean(VocabularyListVo vocabularyListVo) {
//		sqlSession.update("vocabularylist.updatewordandmean", vocabularyListVo);
//	}
	//마지막 빼오기
	public List<VocabularyListVo> selectAllWord(VocabularyListVo vocabularyListVo){
		return sqlSession.selectList("vocabularylist.selectallword",vocabularyListVo);
	}
	//사리추가 느낌의 단어추가
	public void insertMoreWord(VocabularyListVo vocabularyListVo) {
		sqlSession.insert("vocabularylist.insertMoreWord", vocabularyListVo);
	}
	//단어삭제
	public void deleteWord(URLPathVo urlPathVo) {
		sqlSession.delete("vocabularylist.deleteWord", urlPathVo);
	}
/////////////////////////////////////////////////////////////////////////////////////////////
	//단어장네임 업데이트
	public void updateWordbookName(URLPathVo urlPathVo) {
		sqlSession.update("vocabularylist.updateWordbookName", urlPathVo);
	}
	//단어 업데이트
	public void updateWordName(VocabularyListVo vocabularyListVo) {
		sqlSession.update("vocabularylist.updateWordName", vocabularyListVo);
	}
	//뜻 업데이트
	public void updateMeanName(VocabularyListVo vocabularyListVo) {
		sqlSession.update("vocabularylist.updateMeanName", vocabularyListVo);
	}
	//단어장 제목 가져오는 reposit
	public String selectOneWordbookName(int wordbookNo) {
		return sqlSession.selectOne("vocabularylist.selectOneWordbookName", wordbookNo);
	}
/////////////////////////////////////////////////////////////////////////////////////////////
	//디렉토리 리스트
	public List<WordbookVo> selectWordbookAlldirectoryList(URLPathVo urlPathVo){
		return sqlSession.selectList("wordbook.selectWordbookAlldirectoryList",urlPathVo);
	}
	public URLPathVo selectOneNickName(URLPathVo urlPathVo) {
        return sqlSession.selectOne("wordbook.selectOneNickName", urlPathVo);
    }
	
}
