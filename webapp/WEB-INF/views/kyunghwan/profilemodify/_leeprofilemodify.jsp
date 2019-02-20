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

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
<style>
.ko-12 {
	font-family: Nanum Gothic, dotum, sans-serif;
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

.small-box .icon {
	-webkit-transition: all .3s linear;
	-o-transition: all .3s linear;
	transition: all .3s linear;
	position: absolute;
	top: -10px;
	right: 30px;
	z-index: 0;
	font-size: 90px;
	color: rgba(0, 0, 0, 0.15);
}

.small-box:hover {
	text-decoration: none;
	color: #dd4b39 !important
}

.fixed .content-wrapper, .fixed .right-side {
	padding-top: 85px;
}

.table-hover>tbody>tr:hover {
	background-color: #f5f5f5;
	color: #dd4b39 !important;
}

.content-header>.breadcrumb {
	position: static;
}

.profileborder {
	top: 2px;
	left: 2px;
	bottom: 2px;
	right: 2px;
	border: 2px solid #ff6666;
	border-radius: 6px;
}

.lev1 {
	border-bottom: 2px solid #ff6666;
	padding-top: 15px;
	padding-bottom: 15px;
	clear: both;
}

.inputmodi {
	border-color: #ffffff;
	border: 1px;
	border-left: 1.5px solid #ff6666;
	height: 40px;
	width: 350px;
	font-size: 16px;
	padding: 15px;
}
.profileblock{
	width: 110px;
	height: auto;
	display: inline-block;
	font-size: 16px;
	float: left;
	padding-left: 10px;
    padding-top: 8px;
}

#imgpreview{
	margin-top : 10px;
	max-width : 200px;
	max-height : 200px;
	margin-bottom : 10px;
	
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
			<section class="content-header"></section>
			<section class="content container">
				<!-- 기본 사항 -->
				<div style="margin-top: 35px; text-align: center;">
					<c:import
						url="/WEB-INF/views/kyunghwan/profilemodify/profileheadernotice.jsp"></c:import>
				</div>


				<!-- 전체 테두리 들어갈 div -->
				<div class="container profileborder"
					style="width: 800px; max-width: none !important; margin-top: 35px;">
					<!-- 컨테이너 -->

					<div class="lev1">

						<!-- 프로필 공지사항 변경칸 -->
						<c:import
							url="/WEB-INF/views/kyunghwan/profilemodify/profilenotice.jsp"></c:import>

					</div>

					<form action="usermodify.do" method="post"
						enctype="multipart/form-data">
							<!-- 닉네임 -->
						<div class="lev1">
							<div class="profileblock">닉네임</div>
							 <input type="text" id="nickname" name="nickName"
								value="${usersVo.nickName}" class=inputmodi>
						</div>
							<!-- 닉네임 -->
							<!-- 프로필 사진 -->
						<div class="lev1">
							<div class="profileblock">프로필 사진</div>
							 <input type="file" id="userimage" name="file"
								class="inputmodi">
							 <img id="imgpreview" src="/upload/profile/${usersVo.userImage}" alt="your image" />	
						</div>
							<!-- 프로필 사진 -->
							<!-- 프로필 내용 -->
						<div class="lev1">
							<div class="profileblock">프로필 내용</div>
							 <input type="text" id="usercontent" name="userContent"
								value="${usersVo.userContent}" class=inputmodi>
						</div>
							<!-- 프로필 내용 -->
						<div class="lev1">
							<input type="submit"
								class="btn btn-block btn-danger form control"
								style="width: 100%" value="확인">
						</div>

					</form>

				</div>
			</section>
		</div>

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
	function readURL(input) {
		 
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	 
	        reader.onload = function (e) {
	            $('#imgpreview').attr('src', e.target.result);
	        }
	 
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	 
	$("#userimage").change(function(){
	    readURL(this);
	});
	
	
	</script>

</html>