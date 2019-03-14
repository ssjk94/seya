<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		.flash-dialog {
			width: 1100px;
			height: 820px;
			margin-left: 10%;
		}
		
		.flash-content {
			width: 100%;
			height: 100%;
		}
		
		.flashInfo {
			clear: both;
			height: 60px;
		}
		
		.flashInfo p {
			display: inline-block;
			font-size: 25px;
			margin: 0px;
		}
		
		.flashInfo b {
			font-size: 35px;
		}
		
		.flashInfo img {
			width: 40px;
		}
		
		.flashInfo div:nth-child(3) p {
			margin-top: 10px;
		}
		
		.flashInfo .pull-left {
			margin-right: 50px;
		}
		
		.flashInfo .pull-right {
			margin-left: 10px;
		}
		
		.flash-body {
			height: 75%;
		}
		
		#flashDenote {
			height: 400px;
			display: table;
		}
		
		#flashSubmit {
			background-color: ghostwhite;
		}
		
		#quiz {
			font-size: 50px;
			display: table-cell;
			vertical-align: middle;
		}
	</style>
</head>
<body>
	<div id="flashquizModal" class="modal fade">
		<div class="modal-dialog flash-dialog">
			<div class="modal-content flash-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<!-- 설명이 들어갈 div -->
					<div class="flashInfo">
						<!-- GameTitle div -->
						<div id="flashName" class="pull-left">
							<p>제목 : &nbsp;&nbsp;</p>
							<b>FlashCard Game</b>
						</div>
						<!-- Score div -->
						<div id="flashScore" class="pull-left">
							<p>점수 : &nbsp;&nbsp;</p>
							<b>2022</b>점
						</div>
						<!-- nowSituation div -->
						<div id="flashNowSituation" class="pull-left">
							<p>현재상황 : &nbsp;&nbsp;</p>
							<b></b> <b></b>
						</div>
						<!-- Life div -->
						<div class="pull-right">
							<p>목숨 : &nbsp;&nbsp;</p>
							<img id="flashLife1" alt="" src="/dist/images/heart.png"> <img
								id="flashLife2" alt="" src="/dist/images/heart.png"> <img
								id="flashLife3" alt="" src="/dist/images/heart.png">
						</div>

					</div>

					<!-- 시간이 들어갈 div -->
					<div class="time-bar">
						<div class="progress">
							<div
								class="progress-bar progress-bar-primary progress-bar-striped"
								role="progressbar" aria-valuenow="100" aria-valuemin="0"
								aria-valuemax="100" style="width: 100%">
								<span class="sr-only">40% Complete (success)</span>
							</div>
						</div>
					</div>
				</div>

				<div class="modal-body flash-body">

					<div class="quiz-header">다음의 보기에서 알맞은 정답을 적어주세요.</div>

					<!-- content box -->
					<div id="flashDenote" class="quiz-OX">
						<p id="quiz"></p>
					</div>

					<input class="quiz-answer text-center" type="text" id="flashSubmit"
						autocomplete="off" value="">
				</div>
				<div class="modal-footer">
					<button id="flashExit" type="button" class="btn btn-default"
						data-dismiss="modal">나가기</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
</body>
</html>