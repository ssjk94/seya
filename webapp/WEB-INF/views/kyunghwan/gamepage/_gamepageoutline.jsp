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
	.gamestartbtn{
		width: 100%;
	}
	.gamepageborder{
	top:2px;
	left:2px;
	bottom:2px;
	right:2px;
	border:2px solid rgba(221, 75, 57,0.5);
	border-radius: 6px;
	}
	.imgsize{
	width: 50px;
	margin: auto;
	}
	.flashcard{
		background-color: deeppink;
		padding-top:40px;
		text-align: center;
		height: 120px;
	}
	.explain{
	
    padding-left: 20px;
    padding-top: 30px;
    padding-bottom: 30px;
    padding-right: 20px;
	
	}
	.rankingprofile{
	margin-left: 40px;
	}
	p{
	padding-top: 15px;
	margin: auto;
	}
	.pscore{
	padding-left: 40px;
	}
	
	.shapemargin{
	margin-top: 5px;
	margin-left: 125px;
	color: rgba(221, 75, 57,0.5);
	}

</style>

</head>
    <!-- 게임명 타이틀 틀-->
    <div>
    	<div class="leftattach firstpage">
    		<c:import url="/WEB-INF/views/kyunghwan/gamepage/gametitle.jsp"></c:import>
    	</div>
    	    		<!-- 랭킹 타이틀 -->
    	<div class="leftattach secondpage">
    			<c:import url="/WEB-INF/views/kyunghwan/gamepage/gamepagerankingtitle.jsp"></c:import>
    	</div>
    		<!-- 다른 div에 영향을 안주기위한 div -->
    	<div class="clear"></div>
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
    		<!-- 랭킹1 -->
    		<div class="secondpage gamepageborder">
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
    		
    		<!-- 랭킹2 -->
    		<div class="pagefly secondpage gamepageborder">
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
    		
    		<!-- 랭킹3 -->
    		<div class="pagefly secondpage gamepageborder">
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
    		
    		    			<!-- 자기 랭크 나오기전 이미지 들어가는 블럭 -->
    			<div class="secondpage pagefly">
    				<!-- 동그라미 1 -->
    				<div class="shapemargin">
    					<c:import url="/WEB-INF/views/kyunghwan/gamepage/myrankingbefore.jsp"></c:import>
    				</div >
    				
    				<!-- 동그라미 2 -->
    				<div class="shapemargin">
    					<c:import url="/WEB-INF/views/kyunghwan/gamepage/myrankingbefore.jsp"></c:import>
    				</div>
    				
    				<!-- 동그라미 3 -->
    				<div class="shapemargin">
    					<c:import url="/WEB-INF/views/kyunghwan/gamepage/myrankingbefore.jsp"></c:import>
    				</div>
    				
    			</div>
    			
    		<!-- 내 랭킹 -->
    		<div class="pagefly secondpage gamepageborder">
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