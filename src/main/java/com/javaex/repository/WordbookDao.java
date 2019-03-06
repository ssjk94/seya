package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.URLPathVo;
import com.javaex.vo.VocabularyListVo;
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
		// 단어장 관련된것을 가져오는 객체
		public WordbookVo selectWordbookInfo(URLPathVo urlPathVo) {
			return sqlSession.selectOne("wordbook.selectWordbookInfo", urlPathVo);
		}
		//session id로 자기의 첫번째 디렉토리 번호를 찾는것
		public WordbookVo selectDirectoryNoInfo(String id) {
			return sqlSession.selectOne("wordbook.selectDirectoryNoInfo", id);
		}
		//wordbookno로 단어테이블을 젠부 복사한다
		public List<VocabularyListVo> selectVocabularyInfo(URLPathVo urlPathVo){
			return sqlSession.selectList("wordbook.selectVocabularyInfo", urlPathVo);
		}
		
		//가져온 단어장을 자기 아이디에 만든다 
		public void insertWordbook(WordbookVo wordbookVo) {
		sqlSession.insert("wordbook.insertWordbook", wordbookVo);
		}
		//가져온 단어를 단어장 번호로 만든다
		public void insertWord(VocabularyListVo vocabularyListVo) {
			sqlSession.insert("wordbook.insertWord", vocabularyListVo);
		}
		//공유기능을 변경문 공유가능으로 변경
		public void updateWordbookAccess0(WordbookVo wordbookvo) {
			sqlSession.update("wordbook.updateWordbookAccess0", wordbookvo);
		}
		//공유기능을 변경문 공유불가로 변경
		public void updateWordbookAccess1(WordbookVo wordbookvo) {
			sqlSession.update("wordbook.updateWordbookAccess1", wordbookvo);
		}
		//단어의 숫자를 가져오기 위한 Dao
		public int selectWordNum(int wordbookNo){
			return sqlSession.selectOne("wordbook.selectWordNum",wordbookNo);
		}
		//단어 타입을 가져오는 셀렉트문
		public int selectWordbookType(URLPathVo urlPathVo) {
			return sqlSession.selectOne("wordbook.selectWordbookType", urlPathVo);
		}
		//기본 단어장을 삭제하려고할때 삭제가 아닌 업데이트로 안나오게끔 만드는 문
		public void updateDefaultWordbook(URLPathVo urlPathVo) {
			sqlSession.update("wordbook.updateDefaultWordbook",urlPathVo);
		}
		public int realExistUser(URLPathVo urlPathVo) {
			return sqlSession.selectOne("wordbook.realExistUser", urlPathVo);
		}
}
