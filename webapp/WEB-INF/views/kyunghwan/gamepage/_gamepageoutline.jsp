<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>

<style type="text/css">
	.clear{
		clear: both;
	}
	
	.leftattach{
		float: left;
	}
	
	.pagefly{
		margin-top: 30px;
	}
	
	.firstpage{
		width: 340px;
		padding-bottom: 10px; 
		padding-top: 10px; 
		padding-left: 20px; 
		padding-right: 20px;
	}
	.secondpage{
		margin-left: 30px;
		width: 310px;
		padding-bottom: 10px; 
		padding-top: 10px; 
		padding-left: 20px; 
		padding-right: 20px;
	}
	.pageincludefly{
		margin-left: 10px;
	}

</style>

</head>
    <!-- 게임명 타이틀 틀-->
    <div class="clear">
    	<c:import url="/WEB-INF/views/kyunghwan/gamepage/gametitle.jsp"></c:import>
    	<!-- 다른 div에 영향을 안주기위한 div -->
    	<div class="clear">
    	</div>
    </div>
    <!-- 게임과 랭킹이 그리고 단어고르기가 나오는 틀 -->
    <div class="pagefly">
    
    	<!-- 게임 ui , 게임설명, 단어장 고르기 -->
    	<div class="leftattach">
    		<!-- 게임 ui -->
    		<div>
    			<c:import url="/WEB-INF/views/kyunghwan/gamepage/gameuiexplain.jsp"></c:import>
    		</div>
    		<!-- 게임 설명 -->
    		<div class="pagefly">
    			<c:import url="/WEB-INF/views/kyunghwan/gamepage/gameexplain.jsp"></c:import>
    		</div>
    		<!-- 단어장 고르기 -->
    		<div class="pagefly">
    			<c:import url="/WEB-INF/views/kyunghwan/gamepage/gamepagevocabularyselect.jsp"></c:import>
    		</div>
    	</div>
    	
    	<!-- 랭킹 -->
    	<div class="leftattach firstpage">
    		<!-- 랭킹 타이틀 -->
    		<div>
    			<c:import url="/WEB-INF/views/kyunghwan/gamepage/gamepagerankingtitle.jsp"></c:import>
    		</div>
    		<!-- 랭킹 -->
    		<div class="pagefly secondpage" style="border: 1px solid;">
    			<!-- 랭킹 이미지 -->
    			<div class="leftattach">
    				<c:import url="/WEB-INF/views/kyunghwan/gamepage/rankingimg.jsp"></c:import>	
    			</div>
    			<!-- 랭커 프로필 사진 -->
    			<div class="leftattach pageincludefly">
    				<c:import url="/WEB-INF/views/kyunghwan/gamepage/rankerprofilepicture.jsp"></c:import>
    			</div>
    			<!-- 랭커 닉네임 -->
    			<div class="leftattach pageincludefly">
    				<c:import url="/WEB-INF/views/kyunghwan/gamepage/rankernickname.jsp"></c:import>
    			</div>
    			<!-- 랭커 점수 -->
    			<div class="leftattach pageincludefly">
    				<c:import url="/WEB-INF/views/kyunghwan/gamepage/rankerscore.jsp"></c:import>
    			</div>
    			<div class="clear"></div>
    		</div>
    	
    	</div>
    	<!-- 다른 div에 영향을 안주기위한 div -->
    	<div class="clear"></div>
    </div>
    
    <!-- 시작하는 버튼 나오는 틀 -->
    <div class="pagefly">
    	<c:import url="/WEB-INF/views/kyunghwan/gamepage/gamestartbutton.jsp"></c:import>
    </div>