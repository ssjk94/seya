<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<style type="text/css">
	.pairSetGameBox{
		width: 820px;
		height: 700px;
		padding: 0px 15px 0px 15px;
	}
	
	.pairSetGameWordBox{
		width: 300px;
		height: 150px;
		margin: 50px 0px 0px 20px;
		border: 1px solid;
		float: left;
	}
	.pairSetGameMeanBox{
		width: 300px;
		height: 150px;
		margin: 50px 20px 0px 150px;
		border: 1px solid;
		float: left;
	}
	.clearBox{
		clear: both;
	}
	.black{
		background-color: black;
	}
	.white{
		background-color: white;
	}
	.hidden{
		visibility: hidden;
	}
</style>

</head>
<body>	
	<div style="background-color: black; width: 100%; height: 100%; position: fixed;">	
	qweqwe
		<div class="pairSetGameBox" style="background-color: #fff; margin-left: 30px;">
			
			<div class="clearBox">
				<div id="word1" class="pairSetGameWordBox">
					<span>aa</span>
				</div>
				<div id="mean1" class="pairSetGameMeanBox">
					<span>11</span>
				</div>
			</div>
			
			<div class="clearBox">
				<div id="word2" class="pairSetGameWordBox">
					<span>bb</span>
				</div>
				<div id="mean2"  class="pairSetGameMeanBox">
					<span>22</span>
				</div>
			</div>
			
			<div class="clearBox">
				<div id="word3" class="pairSetGameWordBox">
					<span>cc</span>
				</div>
				<div id="mean3"  class="pairSetGameMeanBox">
					<span>33</span>
				</div>
			</div>
			
		</div>
	</div>
</body>

	<script>
	var gameList = new Array();	//게임 리스트를 받는 배열
	var success = new Array();		//정답지 리스트
	var wordName =	new Array();//게임 워드 받는 배열
	var meanName =	new Array();//게임 뜻 받는 배열
	
	<c:forEach items="${gameList}" var = "info">
		var PairSetGameVo = new Object();
		PairSetGameVo.wordName = "${info.wordName}";
		PairSetGameVo.meanName = "${info.meanName}";
		gameList.push(PairSetGameVo);
	</c:forEach>
		
	var rnum = 0;//정답 횟수를 추측하여 다시 리셋 시키게 하는 전역변수
	
	var num = 1; //클릭을 몇번 했는지 나타내는 전역변수
	var a1; // 1번째 워드 or mean값
	var a2;	// 2번째 워드 or mean값
	var id1; // 1번째 워드 or mean값 에 div아이디
	var id2;// 2번째 워드 or mean값 에 div아이디
	
	var wordIndex;	//3개 랜덤 흩뿌릴때 인덱스 써야함
	var meanIndex;
	var gameLength;
	
	var wordOrMean;
	
	$(document).ready(function() {
		console.log("준비완료");
		
		
		
		startGame();
		
	});
	
	function startGame(){
		console.log("시작");
		
		for(var i =0 ; i<3 ; i++){
			
			if(gameList.length<3 && i == gameList.length){
				console.log("3개이하 탈출");
				break;
			};
			
			var index = gameList.indexOf(random(gameList));
			success = new Array();
			wordName.push(gameList[index].wordName);
			meanName.push(gameList[index].meanName);
			
			success.push(gameList[index].wordName);
			success.push(gameList[index].meanName);
			gameList.splice(index,1);
		};
		
		//현재 배열중 랜덤으로 뽑은 3개
		console.log(wordName);
		console.log(meanName);
		console.log(success);
		//현재 배열중 랜덤으로 뽑은 3개	
	
		//랜덤 뽑은 3개로 랜덤하게 위치하게끔 뿌림
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
	
	//클릭 이벤트 펑션 시작	
	$(".clearBox").on("click","div",function(){
		
		
		$(this).toggleClass("black");
		
		if(num == 1){
			a1 = $(this).find("span").text();
			id1 = $(this).attr("id");
			//console.log("선택했던 태그안 텍스트1"+a1);
			//console.log("선택했던 div 아이디1"+id1);
		}
		
		
		if(num == 2){
			a2 = $(this).find("span").text();
			id2 = $(this).attr("id");
			
			//console.log("선택했던 태그안 텍스트2"+a2);
			//console.log("선택했던 div 아이디2"+id2);
			console.log(a1);
			console.log(a2);
			console.log(id1);
			console.log(id2);
			
			console.log(success.indexOf(a1));
			console.log(success.indexOf(a2));
			//word부터 시작하는지 mean부터 시작하는지 알기위해
			//if(id1.startsWith( 'w' )){
			//	console.log("워드 시작");
			//}else{
			//	console.log("mean 시작");
			//}
			
			
			//word시작이면 왼쪽에 +1 mean 시작이면 오른쪽에 +1 이 정답
			//정답 체크하는 문장이 들어가야함
			if(success.indexOf(a1)+1==success.indexOf(a2)){
				console.log("정답");
				
				$("#"+id1).addClass("hidden");
				$("#"+id2).addClass("hidden");
				rnum++;//정답 횟수를 체크하는 전역변수
			}else {
				console.log("오답")
			}
			
			if(rnum == 3){
				startGame();
				rnum = 0;
			}
		}
		
		//전역변수 초기화 문장
		if(num == 1){
			num++;
		}else{
			num =1;
		}
			
			
			//지정했던 클래스 삭제
			setTimeout(
					function() { 
						$("div").removeClass("black")
					}, 100
				);
			//지정했던 클래스 삭제
			
		
	});
	//클릭 이벤트 펑션 끝나는곳

		
		
/* 		
		function hov(){
			
			
			if(boo == true){
				$("div").removeClass("white").addClass("black");
				boo = false;
			}else{
				$("div").removeClass("black").addClass("white");
				boo = true;
			}
		}
*/

//랜덤 함수
	function random(a) {
	  return a[Math.floor(Math.random() * a.length)];
	}

	</script>

</html>