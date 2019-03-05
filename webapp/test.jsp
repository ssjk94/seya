<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<style type="text/css">
		.modal-dialog{
			width: 1000px;
		}
		.gameInfo {
			clear: both;
			height: 60px;
		}
		.gameInfo p{
			display: inline-block;
			font-size: 25px;
			margin: 0px;
		}
		.gameInfo b{
			font-size: 35px;
		}
		.gameInfo img{
			width: 40px;
		}
		.gameInfo div:nth-child(3) p{
			margin-top: 10px;
		}
		.gameInfo .pull-left{
			margin-right: 50px;
		}
		.gameInfo .pull-right{
			margin-left: 10px;
		}
		
		
		
		.modal-content{
			height: 768px;
		}
		
		.modal-body{
			height: 380px;
		}
		.clearBox{
			clear: both;
		}
		.clearBox img{
			position: absolute;
			width: 210px;
			height: 105px;
			/*
    		animation-duration: 1s;
  			animation-name: slidein;
  			*/
		}
		
		@keyframes slidein {
		  from {
		    margin-left: 75%;
		    width: 300%
		  }
		
		  to {
		    margin-left: 0%;
		    width: 100%;
		  }
		}
		.clearBox span{
			font-size: 25px;
			display: block;
    		text-align: center;
    		padding-top: 35px;
    		/*
    		animation-duration: 1s;
  			animation-name: slidein;
  			*/
		}
		.pairSetGameWordBox{
			width: 210px;
			height: 105px;
			margin: 30px 0px 0px 20px;
			float: left;
		}
		.pairSetGameMeanBox{
			width: 210px;
			height: 105px;
			margin: 80px 0px 0px 20px;
			float: left;
		}
		.absolute{
			position: absolute;
		}
		.boxline1{
			margin-top: 0px;
		}
		.boxline2{
			margin-top: 135px;
		}
		.box1{
			margin-left: 0px;
		}
		.box2{
			margin-left: 230px;
		}
		.box3{
			margin-left: 480px;
		}
		.box4{
			margin-left: 710px;
		}
		.clickOn{
			color: darkcyan;
		}
		
		.modal-footer button{
			background-color: #7c8ba8;
		}
		.modal-footer button:hover{
			background-color: #626f87;
		}
	</style>
</head>
<body>

	

	
			
			











		<!--  data-backdrop="static" data-keyboard="false" -->
	<!-- The Modal -->								<!-- 바깥쪽 누른다고 탈출 못하게 하는 문장 -->
<div id="myModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	    <!-- 설명이 들어갈 div -->
		<div class="gameInfo">
		<!-- GameTitle div -->
			<div id="gameName" class="pull-left">
				<p>제목 : &nbsp;&nbsp;</p>
				<b>PairGame</b>
			</div>
			<!-- Score div -->
			<div id="gameScore" class="pull-left">
				<p>점수 : &nbsp;&nbsp;</p>
				<b>59</b>점
			</div>
			<!-- Life div -->
			<div class="pull-right">
				<p>목숨 : &nbsp;&nbsp;</p>
				<img alt="" src="dist/images/heart.png">
				<img alt="" src="dist/images/heart.png">
				<img alt="" src="dist/images/heart2.gif">
			</div>
		
		</div>
		
		<!-- 시간이 들어갈 div -->
		<div>
		시이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이간<br />
		시이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이간<br />
		시이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이이간이이이이이이이이간
		</div>
      </div>
      <div class="modal-body">
        
      	 <div class="clearBox">
			
			<div class="absolute box1 boxline1">
				<div id="word1" class="pairSetGameWordBox">
					<img alt="" src="dist/images/PairFrame.png">
					<span>aaaaaaaaaaa</span>
				</div>
			</div>
				
			<div class="absolute box2 boxline1">
				<div id="word2" class="pairSetGameWordBox">
					<img alt="" src="dist/images/PairFrame.png">
					<span>bb</span>
				</div>
			</div>
			
			<div class="absolute box3 boxline1">
				<div id="word3" class="pairSetGameWordBox">
					<img alt="" src="dist/images/PairFrame.png">
					<span>cc</span>
				</div>
			</div>
			
			<div class="absolute box4 boxline1">
				<div id="word4" class="pairSetGameWordBox">
					<img alt="" src="dist/images/PairFrame.png">
					<span>dd</span>
				</div>
			</div>
				
		</div>
	
	
		<div class="clearBox">
			
			<div class="absolute box1 boxline2">
				<div id="mean1"  class="pairSetGameMeanBox">
					<img alt="" src="dist/images/PairFrame.png">
					<span>11</span>
				</div>
		    </div>
		    
		    <div class="absolute box2 boxline2">
				<div id="mean2"  class="pairSetGameMeanBox">
					<img alt="" src="dist/images/PairFrame.png">
					<span>22</span>
				</div>
		    </div>
		    
		    <div class="absolute box3 boxline2">
				<div id="mean3"  class="pairSetGameMeanBox">
					<img alt="" src="dist/images/PairFrame.png">
					<span>33</span>
				</div>
		    </div>
		    
		    <div class="absolute box4 boxline2">
				<div id="mean4"  class="pairSetGameMeanBox">
					<img alt="" src="dist/images/PairFrame.png">
					<span>44</span>
				</div>
		    </div>
				
		</div>
 
      </div>
      
      
      <div class="modal-footer">
        	<button type="button" class="btn btn-primary" data-dismiss="modal">나가기</button>	
        	<!--  
        	<button type="submit" class="btn btn-primary">나가기</button>
        	-->
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</body>

<script type="text/javascript">
jQuery.ajaxSettings.traditional = true;

var gameList = new Array();	//게임 리스트를 받는 배열
var success = new Array();		//정답지 리스트
var wordName =	new Array();//게임 워드 받는 배열
var meanName =	new Array();//게임 뜻 받는 배열
var wrongWord = new Array();//틀린 단어 저장하는 배열

	
var rnum = 0;//정답 횟수를 추측하여 다시 리셋 시키게 하는 전역변수

var num = 1; //클릭을 몇번 했는지 나타내는 전역변수
var a1; // 1번째 워드 or mean값
var a2;	// 2번째 워드 or mean값
var id1; // 1번째 워드 or mean값 에 div아이디
var id2;// 2번째 워드 or mean값 에 div아이디

var wordIndex;	//3개 랜덤 흩뿌릴때 인덱스 써야함
var meanIndex;
var gameLength;//3개이하일경우 길이를 측정해야하는 전역변수

var gameName = "Pair Word";//${gameName};  게임 네임을 저장하는 변수
var gameScore = 5; // 게임 스코어 전역변수
var listlength;

<c:forEach items="${gameList}" var = "info">
	var PairSetGameVo = new Object();
	PairSetGameVo.wordName = "${info.wordName}";
	PairSetGameVo.meanName = "${info.meanName}";
	gameList.push(PairSetGameVo);
</c:forEach>

$(document).ready(function() {

	
	
	gameStart(gameName,gameScore);
	gameScore = 2222
	gameScoreUpdate(gameScore);
	startGame(gameList);
});

//modal창 키고나서 스타트게임 함수 실행하고
//클릭이벤트로다가 끝



	function startGame(gameList){
		//단어장 리스트 갯수확인하는 지역변수
		listlength = gameList.length
		console.log("시작");
		
		success = new Array();
			
		for(var i =1 ; i<5 ; i++){
			
			var index = gameList.indexOf(random(gameList));
			wordName.push(gameList[index].wordName);
			meanName.push(gameList[index].meanName);
			
			success.push(gameList[index].wordName);
			success.push(gameList[index].meanName);
			gameList.splice(index,1);
			
			if(listlength<5 && i == listlength){
				console.log("4개이하 탈출");
				break;
			};
		};
		
		//현재 배열중 랜덤으로 뽑은 4개
		console.log(wordName);
		console.log(meanName);
		console.log(success);
		//현재 배열중 랜덤으로 뽑은 4개
		
		//다시 보이게
		for(var i = 1; i<success.length;i++){
			
			$("#word"+i).show();
			$("#mean"+i).show();
		}
	
		//랜덤 뽑은 4개로 랜덤하게 위치하게끔 뿌림
		gameLength =wordName.length;
		
		for(var i=1 ; i<=gameLength ; i++){
				
			wordIndex = wordName.indexOf(random(wordName));
			meanIndex = meanName.indexOf(random(meanName));
			$("#word"+i).find("span").text(wordName[wordIndex]);
			$("#mean"+i).find("span").text(meanName[meanIndex]);
			wordName.splice(wordIndex,1);
			meanName.splice(meanIndex,1);
		}
	}

//모달창 여는 함수
	function gameStart(gameName,gameScore) {
		$("#myModal").modal();
		$("#myModal").modal("show");
		$("#gameName").find("b").text(gameName);
		$("#gameScore").find("b").text(gameScore);
	};
	
	function gameScoreUpdate(gameScore){
		$("#gameScore").find("b").text(gameScore);
	}
//클릭시에 발생하는 이벤트
	function hov(){
		
		
		/* if(boo == true){
			$("div").removeClass("white").addClass("black");
			boo = false;
		}else{
			$("div").removeClass("black").addClass("white");
			boo = true;
		} */
	}
	
//랜덤 함수
	function random(a) {
	  return a[Math.floor(Math.random() * a.length)];
	};
	
//틀린단어 단어장에 작성하는 ajax함수
	function wrong(wrongWord) {
			
		if(wrongWord !=""){
			
			$.ajax({
				url : "${pageContext.request.contextPath}/seo/wrongword",
				type : "post",
		//		traditional : true,
				data : {wrongWord: wrongWord},
				dataType : "json",
				success : function(num){
				/*성공시 처리해야될 코드 작성*/
					console.log("틀린단어 ajax");
					console.log(num);
				},
				error : function(XHR, status, error) {
				console.error(status+" : "+error);
				}
			});
		};//if
	};//function
</script>

</html>