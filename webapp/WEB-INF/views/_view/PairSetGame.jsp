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
	.absolute{
		position: absolute;
	}
	.wordbox{
		margin-left: 0px;
	}
	.meanbox{
		margin-left: 322px;
	}
	.boxline1{
		margin-top: 0px;
	}
	.boxline2{
		margin-top: 202px;
	}
	.boxline3{
		margin-top: 404px;
	}
	.choiceblock{
		background-color: fuchsia;
	}
	
</style>

</head>
<body>	
	<div style="background-color: black; width: 100%; height: 100%; position: fixed;">	
	qweqwe
		<div class="pairSetGameBox" style="background-color: #fff; margin-left: 30px;">
			
			<div class="clearBox">
			
				<div class="absolute wordbox boxline1">
					<div id="word1" class="pairSetGameWordBox">
						<span>aa</span>
					</div>
				</div>
				
				<div class="absolute meanbox boxline1">
					<div id="mean1"  class="pairSetGameMeanBox">
						<span>11</span>
					</div>
				</div>
				
			</div>
			
			<div class="clearBox">
			
				<div class="absolute wordbox boxline2">
					<div id="word2" class="pairSetGameWordBox">
						<span>bb</span>
					</div>
				</div>
				
				<div class="absolute meanbox boxline2">
					<div id="mean2"  class="pairSetGameMeanBox">
						<span>22</span>
					</div>
				</div>
				
			</div>
			
			<div class="clearBox">
			
				<div class="absolute wordbox boxline3">
					<div id="word3" class="pairSetGameWordBox">
						<span>cc</span>
					</div>
				</div>
				
				<div class="absolute meanbox boxline3">
					<div id="mean3"  class="pairSetGameMeanBox">
						<span>33</span>
					</div>
				</div>
				
			</div>
			
		</div>
	</div>
	
	
	
	
	<!-- The Modal -->
<div id="myModal" class="modal fade">
  <div class="modal-dialog" style="width: 500px;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" align="center">Game Name</h4>
      </div>
      <div class="modal-body">
        <p align="center">
        	당신의 점수:<span>59</span>점
        </p>
      </div>
      <div class="modal-footer">
        <form action="">
        	<button type="button" class="btn btn-default" data-dismiss="modal">다시하기</button>
        	<input type="hidden" name="wordbookNo">
        	<button type="submit" class="btn btn-primary">나가기</button>
        </form>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
	
</body>

	<script>
	var gameList = new Array();	//게임 리스트를 받는 배열
	var success = new Array();		//정답지 리스트
	var wordName =	new Array();//게임 워드 받는 배열
	var meanName =	new Array();//게임 뜻 받는 배열
	var wrongWord = new Array();//틀린 단어 저장하는 배열
	
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
	var gameLength;//3개이하일경우 길이를 측정해야하는 전역변수
	
	var gameName = "Pair Word";//${gameName};  게임 네임을 저장하는 변수
	var gameScore = 5; // 게임 스코어 전역변수
	var listlength;
	$(document).ready(function() {
		console.log("준비완료");

		startGame();
		
	});
	
	function startGame(){
		//단어장 리스트 갯수확인하는 지역변수
		listlength = gameList.length
		
		
		
		

		
		console.log("시작");
		
		success = new Array();
			
		for(var i =1 ; i<4 ; i++){
			
			var index = gameList.indexOf(random(gameList));
			wordName.push(gameList[index].wordName);
			meanName.push(gameList[index].meanName);
			
			success.push(gameList[index].wordName);
			success.push(gameList[index].meanName);
			gameList.splice(index,1);
			
			if(listlength<4 && i == listlength){
				console.log("3개이하 탈출");
				break;
			};
		};
		
		//현재 배열중 랜덤으로 뽑은 3개
		console.log(wordName);
		console.log(meanName);
		console.log(success);
		//현재 배열중 랜덤으로 뽑은 3개
		
		//다시 보이게
		for(var i = 1; i<success.length;i++){
			
			$("#word"+i).show();
			$("#mean"+i).show();
		}
	
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
	$(".absolute").on("click","div",function(){
		
		
		$(this).toggleClass("choiceblock");
		
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
				
				$("#"+id1).hide();
				$("#"+id2).hide();
				gameScore = gameScore + 100;
				rnum++;//정답 횟수를 체크하는 전역변수
				//단어장에 있는 단어를 다 사용 하였을때
					
				if(listlength<3 && success.length == rnum+1){
					//모달창 으로다가 보여주고 확인 누르면 시작 페이지로 시작 페이지 아직 만들지 않음 확인밖에 없음
					gameEnd();
				}
				//지정했던 클래스 삭제
				setTimeout(
						function() { 
							$("div").removeClass("choiceblock")
						}, 100
				);
				//지정했던 클래스 삭제
				
			}else {
				console.log("오답");
				gameScore = gameScore - 44;
				
				
				if(id1.startsWith('w') && !id2.startsWith('w')){
					wrong(a1);
				}else if(!id1.startsWith('w') && id2.startsWith('w')){
					wrong(a2);
				}
				
				setTimeout(
						function() { 
							$("div").removeClass("choiceblock")
						}, 100
				);
			}
			
			if(rnum == 3){
				rnum = 0;
				startGame();
			}
		}
		
		//전역변수 초기화 문장
		if(num == 1){
			num++;
		}else{
			num =1;
		}
			
		
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
	
//모달창 여는 함수
	function gameEnd() {
		$("#myModal").modal();
		$("#myModal").modal("show");
		$("#myModal").find("h4").text(gameName);
		$(".modal-body").find("span").text(gameScore);
	}
	jQuery.ajaxSettings.traditional = true;

	function wrong(wrongWord) {
		
		if(wrongWord !=""){
		
			$.ajax({
				url : "${pageContext.request.contextPath}/seo/wrongword",
				type : "post",
	//			traditional : true,
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
		}//if
	};//function

	</script>
	
	

</html>