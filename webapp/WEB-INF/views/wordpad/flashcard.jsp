<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.panel-primary {
    border-color: #000000;
}
</style>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

	<div class="content container">
		&nbsp;

		<!--단어장 경로 -->
		<!-- <div class="row">
			<div class="col-xs-4"> -->
		<div class="panel panel-primary">
			<h5 class="">&nbsp;&nbsp;단어장 입력 :</h5>
		</div>
		<!-- 	</div>
		</div> -->
		<!--/단어장 경로 -->

		&nbsp;

		<!--플래시카드 -->
		<div class="row">
			<div class="col-xs-8 col-md-12">
				<div class="panel panel-primary panel-height">
					<div align="right">
						<div class="btn-group">
							<button type="button" class="btn btn-danger btn-seung">못
								외운단어</button>
							<button type="button" class="btn btn-success btn-seung">외운단어</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/플래시카드 -->

	<!--페이저-->
	<div class="pagerwrap">
		<nav>
			<ul class="pager">
				<li><a href="#">이전</a></li> &nbsp;&nbsp;1&nbsp;/&nbsp;50&nbsp;&nbsp;
				<li><a href="#">다음</a></li>
			</ul>
		</nav>
	</div>
	<!--/페이저-->

	<br>

	<!--수정버튼-->
	<div class="modiwrap">
		<h5 class="text-center">
			<a class="btn btn-primary" href="#" role="button">수정</a>
		</h5>
	</div>

	<!--/수정버튼-->

	<br> <br> <br>

	<!--게임링크-->
	<div class="gamerow">
		<div class="col-xs-4 col-md-4">
			<div class="panel panel-primary panel-card">
				<a href="#"><img src="dist/images/flashcards1.jpg" alt="플래시 카드">
				</a>
				<hr>

			</div>
		</div>
		<div class="col-xs-4 col-md-4">
			<div class="panel panel-primary panel-card">
				<a href="#"><img src="dist/images/wordmatch.png" alt="짝 맞추기">
				</a>
				<hr>
			</div>
		</div>
		<div class="col-xs-4 col-md-4">
			<div class="panel panel-primary panel-card">
				<a href="#"><img src="dist/images/question_mark.png" alt="랜덤 퀴즈">
				</a>
				<hr>

			</div>
		</div>
	</div>
	<div class="gamename">
		<div class="col-xs-4 col-md-4">
			<p class="caption text-center">플래시 카드</p>
		</div>
		<div class="col-xs-4 col-md-4">
			<p class="caption text-center">짝 맞추기</p>
		</div>
		<div class="col-xs-4 col-md-4">
			<p class="caption text-center">&nbsp;랜덤 퀴즈</p>
		</div>

		<!--/게임링크-->
	</div>
</div>