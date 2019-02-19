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
				<div id="word3" class="pairSetGameWordBox">
					cc
				</div>
				<div id="mean3"  class="pairSetGameMeanBox">33</div>
			</div>
			
		</div>
	</div>
</body>

	<script>
	var gameList = new Array();
	var wordNo = new Array();
	var wordName =	new Array();
	var meanName =	new Array();
	
	
	<c:forEach items="${gameList}" var = "info">
	
		var PairSetGameVo = new Object();
		PairSetGameVo.wordNo = "${info.wordNo}";
		PairSetGameVo.wordName = "${info.wordName}";
		PairSetGameVo.meanName = "${info.meanName}";
		gameList.push(PairSetGameVo);
	</c:forEach>
		
		console.log(gameList[0].wordNo);
		console.log(gameList[0].wordName);
		console.log(gameList[0].meanName);
		
		console.log(gameList[1].wordNo);
		console.log(gameList[1].wordName);
		console.log(gameList[1].meanName);
		
		console.log(gameList[2].wordNo);
		console.log(gameList[2].wordName);
		console.log(gameList[2].meanName);
		
		console.log(gameList.length);
	
	
	$(".clearBox").on("click","div",function(){
		
		$(this).toggleClass("black");
		
		var a =$(this).text();
		var id = $(this).attr("id");
		
		console.log(id);
		
		array.push(a);
		
		if(array.length == 2){
			console.log(array);
			
			var str1=array.shift();
			var str2=array.shift();
			
			console.log(str1);
			console.log(str2);
			
			
			//배열 초기화
			array = new Array();
			//배열 초기화
			
			
			
			//지정했던 클래스 삭제
			setTimeout(
					function() { 
						$("div").removeClass("black")
					}, 100
				);
			//지정했던 클래스 삭제
			
		}
		
	});
	

		
		
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
	</script>

</html>