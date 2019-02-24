<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport">
<title>SeyaWord</title>
<!-- Tell the browser to be responsive to screen width -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/css/skins/skin-red-light.css">

<!-- favinco오류 제거용 -->
<link rel="shortcut icon" href="">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poor+Strory:300,400,600,700,300italic,400italic,600italic">
<style>
.ko-12 {
	font-family: 'Poor Strory', cursive;
	font-size: 12px;
}

.sidebar-list {
	list-style: none;
	margin: 0;
}

.sidebar-header, .sidebar-list li {
	white-space: nowrap;
}

.sidebar-box, .sidebar-list {
	overflow: hidden;
	padding: 10px 15px;
	line-height: 20px;
}

.sidebar-list .fa, .sidebar-list .glyphicon, .sidebar-list .ion {
	width: 20px;
}

.skin-blue .sidebar-menu>li.header {
	color: #4b646f;
	background: #1a2226;
}

.sidebar-box, .sidebar-list {
	overflow: hidden;
	padding: 10px 15px;
	line-height: 20px;
}

.sidebar-header {
	padding: 10px 25px 10px 15px;
	font-size: 12px;
	color: #ffffff;
	background: #1a2226;
}

.side-pad {
	pading: 10px;
	margin-bottom: 10px;
}

.sidebar-list .ko-12 {
	display: block;
}

.pull-center {
	margin-left: 62px;
}

.dropdown-menu .user-footer .pull-center {
	padding-left: 20px;
}

.gaeyeya {
	font-size: 22px;
	text-align: center;
}

.profile-content {
	text-align: center;
}

.side-cont {
	padding: 10px;
	text-align: center;
}

.btn-block {
	display: block;
	width: 50%;
	margin: auto;
}

.sidebar-content {
	padding: 10px;
}

.box-header>.box-tools {
	position: absolute;
	right: 20px;
	top: 10px;
}

.fixed .content-wrapper, .fixed .right-side {
	padding-top: 85px;
}

.content-header>.breadcrumb {
	position: static;
}

.breadcrumb {
	background-color: #ffffff;
	margin-top: -35px;
}

.btn-info {
	background-color: #dd4b39;
	border-color: #dd4b39;
}

i.fa-share {
	font-size: 30px;
	margin-right: 15px
}

i.fa-edit {
	font-size: 30px;
	margin-right: 15px
}

i.fa-trash-o {
	font-size: 30px;
}

i.fa-plus {
	font-size: 80px;
}

i.fa-file-text {
	font-size: 80px;
}

.icon {
	top: -25px;
	height: 100px;
}

.small-box .file-icon {
	-webkit-transition: all .3s linear;
	-o-transition: all .3s linear;
	transition: all .3s linear;
	position: absolute;
	top: -25px;
	right: 10px;
	z-index: 0;
	font-size: 90px;
	color: rgba(0, 0, 0, 0.15);
}

.inner-body:hover i.fa-file-text, .inner-body:hover i.fa-plus,
	.Btn-delete:hover i.fa-trash-o, .Btn-change:hover i.fa-edit, .Btn-share:hover i.fa-share,
	.inner-body:hover h3, .inner-body:hover p {
	color: #dd4b39;
}

.small-box:hover .inner-header, .small-box:hover .inner-body {
	color: black;
}

.row {
	padding-left: 10px;
	padding-right: 10px;
}

.add-footer {
	position: static;
	text-align: center;
	padding: 3px 0;
	color: #fff;
	color: rgba(255, 255, 255, 0.8);
	display: block;
	z-index: 10;
	text-decoration: none;
	height: 25px;
	/* margin-bottom: 100px; */
}

.container {
	width: 840px;
}

.small-box {
	border: 1px solid #fff;
	margin-bottom: 10px;
	margin-top: 10px;
}

.inner-header {
	padding: 5px;
	height: 40px;
	width: 100%;
	color: #ffffff;
}

.inner-body {
	height: 170px;
}

.small-box h3 {
	height: 34px;
	font-size: 30px;
	text-align: center;
}

.Btn-submit {
	background-color: transparent;
	border: 0px transparent solid;
	outline:none;
}

h3.create-wordbook-name {
	width: 100%;
	font-size: 30px;
}

h3.wordbook-name {
	text-align: left;
	padding-top: 10px;
	width: 100%;
	font-size: 20px;
}

.wordbook-maker {
	height: 20px;
	width: 100%;
}

.wordbook-regdate {
	height: 20px;
	width: 100%;
}

.wordbook-access {
	height: 20px;
	width: 100%;
}

.wordbook-inner {
	height: 100px;
	width: 100%
}
#wordbookBox{
	padding-right: 0px;
	padding-left: 0px;
}

.wordbook{
	width: 31.3%;
    margin: 5px 1% 10px 1%;
	background-color: #f5f5f5;
	padding: 0 1px 0 0;
	width: 258px;
	border: 1px solid darkgray; !important
}
.editSetting{
	height: 26px;
}

.editWordbook{
	height: 20px;
    padding: 0px 12px 0px 12px;
    margin: 3px 0 3px 0;
	visibility: hidden;
}
.editSetting:hover .editWordbook{
    visibility: visible;
}
p{
	display: inline;
}
.enterFlashcard{
	width: 80%;
	margin: 5px 0 10px 10%;
	padding: 5px 0 5px 0;
}
.infowordbook{
	border-top: 1px solid darkgray;
	padding: 3px 5px 3px 5px;
	clear: both;
}
.viewSelecter{
	margin: 3px 0 25px 0;
	padding-right: 5px;
	clear: both;
}
.shareWordbook{
	margin: 5px 0 5px 25px;
}
.wordbookHeader{
	margin-bottom: 35px;
}
#pagenation{
	margin-left: 38%;
}
.profile-content b{
	font-size: 20px;
}

</style>

</head>

<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-red-light fixed">
	<div class="wrapper">

		<!-- header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<!-- /header -->

		<!-- navigation -->
		<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>
		<!-- /navigation -->

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="path-name">
					<!--단어장 경로 -->
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/${URLId}"><i
								class="fa fa-dashboard"></i> Home </a></li>
					</ol>
					<!--/단어장 경로 -->
				</div>
				
			</section>
			<!-- Main content -->
			<section class="content container">
				
				<!-- 검색결과  and 단어장 추가버튼 -->
				<div class="wordbookHeader">
					<!-- 검색결과창 나오는칸 -->
					<!-- 검색결과 icon -->
					<div class="fa-key pull-left">
							검색결과 :
							<!-- 검색내용 들어갈 칸 --> 
							<b>단어장 2011</b>				
					</div>
					<!-- 단어장 추가하는 버튼이 들어가는칸 -->
					<div class="pull-right">
						<button class="btn btn-sm bg-navy">단어장 만들기</button>
					</div>
				</div>
				
				<!-- 깨끗 -->
				<div style="clear: both;"></div>
				<!-- 깨끗 -->
				
				<!-- 단어장이 나오는 칸 -->
				<div class="box box-default">
				
					<!-- 단어장 뷰어를 선택하는 칸 -->
					<!--갤러리, 리스트 버튼 -->
					<div class="viewSelecter">
		
						<div class="pull-right box-tools">
							<a type="button" class="btn btn-info btn-xs" data-toggle="tooltip"
								href="${pageContext.request.contextPath}/${URLId}/list"><i
								class="fa fa-bars"></i></a> <a type="button"
								class="btn btn-info btn-xs" data-toggle="tooltip"
								href="${pageContext.request.contextPath}/${URLId}"><i
								class="fa fa-th-large"></i></a>
						</div>
					</div>
					<!--/갤러리, 리스트 버튼 -->

					<!-- 단어장 칸 -->
					<div  id="wordbookBox" class="wordbookBox">
					
						<!-- 실질 한개의 단어장 div -->
						<div class="wordbook box pull-left">
							
							<!-- 관리 들어가는 칸 -->
							<div class="editSetting">
								<!-- 호버 들어가야함 -->
								<button class="pull-right btn btn-flat bg-maroon editWordbook">관리</button>
							</div>
							<!-- ㄲㄲ -->
							<div style="clear: both;"></div>
							<!-- ㄲㄲ -->
							<!-- 단어장 리스트로 들어가는 칸 -->
							<div>
								<!-- 단어장 제목들어가는 칸 -->
								<div class="profile-content">
									<b>TOEIC 단어장 2011</b>
								</div>
								<!-- 단어장에 포함된 단어 갯수 들어가는 칸 -->
								<div class="profile-content">
									<p>300단어</p>
								</div>
							</div>
							
							<!-- 플래쉬카드 들어가는 버튼 들어가는 칸 -->
							<div>
								<button class="btn btn-lg bg-olive enterFlashcard">단 어 암 기</button>
							</div>
							
							<!-- 단어장 정보 나오는칸 -->
							<div class="infowordbook">
								<!-- 단어장 정보칸 -->
								<div>
									<!-- 단어장 만든이의 이미지가 나오는 칸 -->
									<div class="pull-left">
										 이미지<br/>
										 이미지
									</div>
									<!-- 만든이와 만든 날짜나오는 칸 -->
									<div class="pull-left">
										<!-- 만든이 -->
										<div>
											<b>서경환`s</b>
										</div>
										<!-- 날짜 나오는칸 -->
										<div>
											<p>2019-03-22</p>
										</div>
									</div>
								</div>
								
								<!-- 공유해가는 버튼있는 칸 -->
								<div>
									<button class="btn btn-sm bg-olive shareWordbook">
										<i class="fa fa-save">&nbsp;&nbsp;&nbsp;퍼가기</i>
									</button>
								</div>
							</div>
						
						</div>
						<!--//실질 한개의 단어장 -->
						
						
						
						
						
						
						
						
						
						
						
						
						
						<!-- 실질 한개의 단어장 div -->
						<div class="wordbook box pull-left">
							
							<!-- 관리 들어가는 칸 -->
							<div class="editSetting">
								<!-- 호버 들어가야함 -->
								<button class="pull-right btn btn-flat bg-maroon editWordbook">관리</button>
							</div>
							<!-- ㄲㄲ -->
							<div style="clear: both;"></div>
							<!-- ㄲㄲ -->
							<!-- 단어장 리스트로 들어가는 칸 -->
							<div>
								<!-- 단어장 제목들어가는 칸 -->
								<div class="profile-content">
									<b>TOEIC 단어장 2011</b>
								</div>
								<!-- 단어장에 포함된 단어 갯수 들어가는 칸 -->
								<div class="profile-content">
									<p>300단어</p>
								</div>
							</div>
							
							<!-- 플래쉬카드 들어가는 버튼 들어가는 칸 -->
							<div>
								<button class="btn btn-lg bg-olive enterFlashcard">단 어 암 기</button>
							</div>
							
							<!-- 단어장 정보 나오는칸 -->
							<div class="infowordbook">
								<!-- 단어장 정보칸 -->
								<div>
									<!-- 단어장 만든이의 이미지가 나오는 칸 -->
									<div class="pull-left">
										 이미지<br/>
										 이미지
									</div>
									<!-- 만든이와 만든 날짜나오는 칸 -->
									<div class="pull-left">
										<!-- 만든이 -->
										<div>
											<b>서경환`s</b>
										</div>
										<!-- 날짜 나오는칸 -->
										<div>
											<p>2019-03-22</p>
										</div>
									</div>
								</div>
								
								<!-- 공유해가는 버튼있는 칸 -->
								<div>
									<button class="btn btn-sm bg-olive shareWordbook">
										<i class="fa fa-save">&nbsp;&nbsp;&nbsp;퍼가기</i>
									</button>
								</div>
							</div>
						
						</div>
						<!--//실질 한개의 단어장 --><!-- 실질 한개의 단어장 div -->
						<div class="wordbook box pull-left">
							
							<!-- 관리 들어가는 칸 -->
							<div class="editSetting">
								<!-- 호버 들어가야함 -->
								<button class="pull-right btn btn-flat bg-maroon editWordbook">관리</button>
							</div>
							<!-- ㄲㄲ -->
							<div style="clear: both;"></div>
							<!-- ㄲㄲ -->
							<!-- 단어장 리스트로 들어가는 칸 -->
							<div>
								<!-- 단어장 제목들어가는 칸 -->
								<div class="profile-content">
									<b>TOEIC 단어장 2011</b>
								</div>
								<!-- 단어장에 포함된 단어 갯수 들어가는 칸 -->
								<div class="profile-content">
									<p>300단어</p>
								</div>
							</div>
							
							<!-- 플래쉬카드 들어가는 버튼 들어가는 칸 -->
							<div>
								<button class="btn btn-lg bg-olive enterFlashcard">단 어 암 기</button>
							</div>
							
							<!-- 단어장 정보 나오는칸 -->
							<div class="infowordbook">
								<!-- 단어장 정보칸 -->
								<div>
									<!-- 단어장 만든이의 이미지가 나오는 칸 -->
									<div class="pull-left">
										 이미지<br/>
										 이미지
									</div>
									<!-- 만든이와 만든 날짜나오는 칸 -->
									<div class="pull-left">
										<!-- 만든이 -->
										<div>
											<b>서경환`s</b>
										</div>
										<!-- 날짜 나오는칸 -->
										<div>
											<p>2019-03-22</p>
										</div>
									</div>
								</div>
								
								<!-- 공유해가는 버튼있는 칸 -->
								<div>
									<button class="btn btn-sm bg-olive shareWordbook">
										<i class="fa fa-save">&nbsp;&nbsp;&nbsp;퍼가기</i>
									</button>
								</div>
							</div>
						
						</div>
						<!--//실질 한개의 단어장 --><!-- 실질 한개의 단어장 div -->
						<div class="wordbook box pull-left">
							
							<!-- 관리 들어가는 칸 -->
							<div class="editSetting">
								<!-- 호버 들어가야함 -->
								<button class="pull-right btn btn-flat bg-maroon editWordbook">관리</button>
							</div>
							<!-- ㄲㄲ -->
							<div style="clear: both;"></div>
							<!-- ㄲㄲ -->
							<!-- 단어장 리스트로 들어가는 칸 -->
							<div>
								<!-- 단어장 제목들어가는 칸 -->
								<div class="profile-content">
									<b>TOEIC 단어장 2011</b>
								</div>
								<!-- 단어장에 포함된 단어 갯수 들어가는 칸 -->
								<div class="profile-content">
									<p>300단어</p>
								</div>
							</div>
							
							<!-- 플래쉬카드 들어가는 버튼 들어가는 칸 -->
							<div>
								<button class="btn btn-lg bg-olive enterFlashcard">단 어 암 기</button>
							</div>
							
							<!-- 단어장 정보 나오는칸 -->
							<div class="infowordbook">
								<!-- 단어장 정보칸 -->
								<div>
									<!-- 단어장 만든이의 이미지가 나오는 칸 -->
									<div class="pull-left">
										 이미지<br/>
										 이미지
									</div>
									<!-- 만든이와 만든 날짜나오는 칸 -->
									<div class="pull-left">
										<!-- 만든이 -->
										<div>
											<b>서경환`s</b>
										</div>
										<!-- 날짜 나오는칸 -->
										<div>
											<p>2019-03-22</p>
										</div>
									</div>
								</div>
								
								<!-- 공유해가는 버튼있는 칸 -->
								<div>
									<button class="btn btn-sm bg-olive shareWordbook">
										<i class="fa fa-save">&nbsp;&nbsp;&nbsp;퍼가기</i>
									</button>
								</div>
							</div>
						
						</div>
						<!--//실질 한개의 단어장 -->
						<!-- 실질 한개의 단어장 div -->
						<div class="wordbook box pull-left">
							
							<!-- 관리 들어가는 칸 -->
							<div class="editSetting">
								<!-- 호버 들어가야함 -->
								<button class="pull-right btn btn-flat bg-maroon editWordbook">관리</button>
							</div>
							<!-- ㄲㄲ -->
							<div style="clear: both;"></div>
							<!-- ㄲㄲ -->
							<!-- 단어장 리스트로 들어가는 칸 -->
							<div>
								<!-- 단어장 제목들어가는 칸 -->
								<div class="profile-content">
									<b>TOEIC 단어장 2011</b>
								</div>
								<!-- 단어장에 포함된 단어 갯수 들어가는 칸 -->
								<div class="profile-content">
									<p>300단어</p>
								</div>
							</div>
							
							<!-- 플래쉬카드 들어가는 버튼 들어가는 칸 -->
							<div>
								<button class="btn btn-lg bg-olive enterFlashcard">단 어 암 기</button>
							</div>
							
							<!-- 단어장 정보 나오는칸 -->
							<div class="infowordbook">
								<!-- 단어장 정보칸 -->
								<div>
									<!-- 단어장 만든이의 이미지가 나오는 칸 -->
									<div class="pull-left">
										 이미지<br/>
										 이미지
									</div>
									<!-- 만든이와 만든 날짜나오는 칸 -->
									<div class="pull-left">
										<!-- 만든이 -->
										<div>
											<b>서경환`s</b>
										</div>
										<!-- 날짜 나오는칸 -->
										<div>
											<p>2019-03-22</p>
										</div>
									</div>
								</div>
								
								<!-- 공유해가는 버튼있는 칸 -->
								<div>
									<button class="btn btn-sm bg-olive shareWordbook">
										<i class="fa fa-save">&nbsp;&nbsp;&nbsp;퍼가기</i>
									</button>
								</div>
							</div>
						
						</div>
						<!--//실질 한개의 단어장 -->
						<!-- 실질 한개의 단어장 div -->
						<div class="wordbook box pull-left">
							
							<!-- 관리 들어가는 칸 -->
							<div class="editSetting">
								<!-- 호버 들어가야함 -->
								<button class="pull-right btn btn-flat bg-maroon editWordbook">관리</button>
							</div>
							<!-- ㄲㄲ -->
							<div style="clear: both;"></div>
							<!-- ㄲㄲ -->
							<!-- 단어장 리스트로 들어가는 칸 -->
							<div>
								<!-- 단어장 제목들어가는 칸 -->
								<div class="profile-content">
									<b>TOEIC 단어장 2011</b>
								</div>
								<!-- 단어장에 포함된 단어 갯수 들어가는 칸 -->
								<div class="profile-content">
									<p>300단어</p>
								</div>
							</div>
							
							<!-- 플래쉬카드 들어가는 버튼 들어가는 칸 -->
							<div>
								<button class="btn btn-lg bg-olive enterFlashcard">단 어 암 기</button>
							</div>
							
							<!-- 단어장 정보 나오는칸 -->
							<div class="infowordbook">
								<!-- 단어장 정보칸 -->
								<div>
									<!-- 단어장 만든이의 이미지가 나오는 칸 -->
									<div class="pull-left">
										 이미지<br/>
										 이미지
									</div>
									<!-- 만든이와 만든 날짜나오는 칸 -->
									<div class="pull-left">
										<!-- 만든이 -->
										<div>
											<b>서경환`s</b>
										</div>
										<!-- 날짜 나오는칸 -->
										<div>
											<p>2019-03-22</p>
										</div>
									</div>
								</div>
								
								<!-- 공유해가는 버튼있는 칸 -->
								<div>
									<button class="btn btn-sm bg-olive shareWordbook">
										<i class="fa fa-save">&nbsp;&nbsp;&nbsp;퍼가기</i>
									</button>
								</div>
							</div>
						
						</div>
						<!--//실질 한개의 단어장 -->
						<!-- 실질 한개의 단어장 div -->
						<div class="wordbook box pull-left">
							
							<!-- 관리 들어가는 칸 -->
							<div class="editSetting">
								<!-- 호버 들어가야함 -->
								<button class="pull-right btn btn-flat bg-maroon editWordbook">관리</button>
							</div>
							<!-- ㄲㄲ -->
							<div style="clear: both;"></div>
							<!-- ㄲㄲ -->
							<!-- 단어장 리스트로 들어가는 칸 -->
							<div>
								<!-- 단어장 제목들어가는 칸 -->
								<div class="profile-content">
									<b>TOEIC 단어장 2011</b>
								</div>
								<!-- 단어장에 포함된 단어 갯수 들어가는 칸 -->
								<div class="profile-content">
									<p>300단어</p>
								</div>
							</div>
							
							<!-- 플래쉬카드 들어가는 버튼 들어가는 칸 -->
							<div>
								<button class="btn btn-lg bg-olive enterFlashcard">단 어 암 기</button>
							</div>
							
							<!-- 단어장 정보 나오는칸 -->
							<div class="infowordbook">
								<!-- 단어장 정보칸 -->
								<div>
									<!-- 단어장 만든이의 이미지가 나오는 칸 -->
									<div class="pull-left">
										 이미지<br/>
										 이미지
									</div>
									<!-- 만든이와 만든 날짜나오는 칸 -->
									<div class="pull-left">
										<!-- 만든이 -->
										<div>
											<b>서경환`s</b>
										</div>
										<!-- 날짜 나오는칸 -->
										<div>
											<p>2019-03-22</p>
										</div>
									</div>
								</div>
								
								<!-- 공유해가는 버튼있는 칸 -->
								<div>
									<button class="btn btn-sm bg-olive shareWordbook">
										<i class="fa fa-save">&nbsp;&nbsp;&nbsp;퍼가기</i>
									</button>
								</div>
							</div>
						
						</div>
						<!--//실질 한개의 단어장 -->
						
						
						
						
						
						
						
						
						
						
						
						
						
					</div>
				</div>
				
			</section>
			<!-- /.content -->
			
			<!-- 페이지 네이션 -->
			<div id="pagenation">
				<ul class="pagination pagination-sm no-margin">
	                <li><a href="#">«</a></li>
	                <li><a href="#">1</a></li>
	                <li><a href="#">2</a></li>
	                <li><a href="#">3</a></li>
	                <li><a href="#">4</a></li>
	                <li><a href="#">5</a></li>
	                <li><a href="#">»</a></li>
              </ul>
			</div>
			
		</div>
		<!-- /.content-wrapper -->
		
		
		
		
		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- /footer -->

	</div>
	<!-- ./wrapper -->



	<!-- REQUIRED JS SCRIPTS -->

	<!-- jQuery 3 -->
	<script
		src="${pageContext.request.contextPath}/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script
		src="${pageContext.request.contextPath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- AdminLTE App -->
	<script
		src="${pageContext.request.contextPath}/dist/js/adminlte.min.js"></script>

	<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>

<script type="text/javascript">
//새로고침
function refreshMemList(){
	location.reload();
}

	function deleteWordbook(wordbookNo) {
		console.log(wordbookNo);
		$.ajax({
			url : "${pageContext.request.contextPath}/${URLId}/delete",
			type : "post",
// 			contentType : "application/json",
			data : {wordbookNo: wordbookNo},
			dataType : "html",
			success : function(){
			/*성공시 처리해야될 코드 작성*/
				alert('삭제되었습니다');
				refreshMemList();
			},
			error : function(XHR, status, error) {
			console.error(status+" : "+error);
			}
		});
	};
	
	function shareWordbook(wordbookNo) {
		console.log(wordbookNo);
		$.ajax({
			url : "${pageContext.request.contextPath}/${URLId}/share",
			type : "post",
// 			contentType : "application/json",
			data : {wordbookNo: wordbookNo},
			dataType : "html",
			success : function(){
			/*성공시 처리해야될 코드 작성*/
				alert('가져갔어요');
				refreshMemList();
			},
			error : function(XHR, status, error) {
			console.error(status+" : "+error);
			}
		});
	};
	
	function changeWordbook(wordbookNo,wordbookAccess) {
		console.log(wordbookNo,wordbookAccess);
		$.ajax({
			url : "${pageContext.request.contextPath}/${URLId}/change",
			type : "post",
// 			contentType : "application/json",
			data : {wordbookNo: wordbookNo, wordbookAccess: wordbookAccess},
			dataType : "html",
			success : function(){
			/*성공시 처리해야될 코드 작성*/
				alert('공유 기능이 변경되었습니다.');
				refreshMemList();
			},
			error : function(XHR, status, error) {
			console.error(status+" : "+error);
			}
		});
	};
	function doNotShare(){
		alert('가져갈 수 없는 단어장 입니다.');
	}
</script>


</html>