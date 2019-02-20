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
</style>

</head>
<body>	
	<div style="background-color: black; width: 100%; height: 100%; position: fixed;">	
	qweqwe
		<div class="pairSetGameBox" style="background-color: #fff; margin-left: 30px;">
			
			<div class="clearBox">
				<div id="word1" class="pairSetGameWordBox">aa</div>
				<div id="mean1" class="pairSetGameMeanBox">11</div>
			</div>
			
			<div class="clearBox">
				<div id="word2" class="pairSetGameWordBox">bb</div>
				<div id="mean2"  class="pairSetGameMeanBox">22</div>
			</div>
			
			<div class="clearBox">
				<div id="word3" class="pairSetGameWordBox">cc</div>
				<div id="mean3"  class="pairSetGameMeanBox">33</div>
			</div>
			
		</div>
	</div>
</body>

	<script>
	var gameList = new Array();	//게임 리스트를 받는 배열
	var wordNo = new Array();		//게임 워드 번호받는 배열
	var wordName =	new Array();//게임 워드 받는 배열
	var meanName =	new Array();//게임 뜻 받는 배열
	
	
	<c:forEach items="${gameList}" var = "info">
	
		var PairSetGameVo = new Object();
		PairSetGameVo.wordNo = "${info.wordNo}";
		PairSetGameVo.wordName = "${info.wordName}";
		PairSetGameVo.meanName = "${info.meanName}";
		gameList.push(PairSetGameVo);
	</c:forEach>

		
		//배열 사이즈 함수
		var length = gameList.length
		
		//펑션으로 계속 준비시키는 문장
		for(var i =0 ; i<3 ; i++){
			
			if(gameList.length<3 && i == gameList.length){
				break;
			};
			
			//console.log(gameList.splice(gameList.indexOf(random(gameList)),1));
			var index = gameList.indexOf(random(gameList));
			wordNo.push(gameList[index].wordNo);
			wordName.push(gameList[index].wordName);
			meanName.push(gameList[index].meanName);
			gameList.splice(index,1);
		};
		
		console.log(wordName);
		console.log(meanName);
		console.log(wordNo);
		
		console.log(random(wordName));
		console.log(random(meanName));
		
		
		
	var rnum = 1;//정답 횟수를 추측하여 다시 리셋 시키게 하는 전역변수
	
	var num = 1; //클릭을 몇번 했는지 나타내는 전역변수
	var a1; // 1번째 워드 or mean값
	var a2;	// 2번째 워드 or mean값
	var id1; // 1번째 워드 or mean값 에 div아이디
	var id2;// 2번째 워드 or mean값 에 div아이디
	
	//클릭 이벤트 펑션 시작	
	$(".clearBox").on("click","div",function(){
		
		
		
		$(this).toggleClass("black");
		
		if(num == 1){
			a1 = $(this).text();
			id1 = $(this).attr("id");
			
			//console.log("선택했던 태그안 텍스트1"+a1);
			//console.log("선택했던 div 아이디1"+id1);
		}
		
		if(num == 2){
			a2 = $(this).text();
			id2 = $(this).attr("id");
			
			//console.log("선택했던 태그안 텍스트2"+a2);
			//console.log("선택했던 div 아이디2"+id2);
			console.log(a1);
			console.log(a2);
			console.log(id1);
			console.log(id2);
			//정답 체크하는 문장이 들어가야함
			
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