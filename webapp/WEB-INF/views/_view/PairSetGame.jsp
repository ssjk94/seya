<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</style>

</head>
<body>	
	<div style="background-color: black; width: 100%; height: 100%; position: fixed;">	
	qweqwe
		<div class="pairSetGameBox" style="background-color: #fff; margin-left: 30px;">
			
			<div class="clearBox">
				<div class="pairSetGameWordBox" onclick="word($(this).text())">aa</div>
				<div class="pairSetGameMeanBox" onclick="mean($(this).text())">11</div>
			</div>
			
			<div class="clearBox">
				<div class="pairSetGameWordBox" onclick="word($(this).text())">bb</div>
				<div class="pairSetGameMeanBox" onclick="mean($(this).text())">22</div>
			</div>
			
		</div>
	</div>
</body>

	<script>
		function game(){
			var word;
			var mean;
			
			console.log(word);
			console.log(mean);
			
			
			
		}
		
		function word (a) {
			//console.log(a);
			word = a
		}
		
		function mean (a) {
			//console.log(a);
			mean = a
		}
		
	</script>

</html>