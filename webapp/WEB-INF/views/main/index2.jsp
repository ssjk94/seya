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
.fixed .content-main, .fixed .footer-main {
	min-height: 100%;
	z-index: 800;
}

b, strong {
	font-weight: 700;
}

.user-page {
	margin-left: 340px;
	margin-right: 340px;
	margin-bottom: 0px;
	padding: 10px;
	position: absolute;
	margin-top: -565px;
	width: 400px;
	background-color: rgba(255, 255, 255, 0.7);
}

.content-wrapper {
	background-color: rgb(10, 21, 23);
}

.content-wrapper, .main-footer {
	margin-left: 0px;
}

.jumbotron {
	opacity: 0.8;
	background-repeat: no-repeat;
	background-size: cover;
	margin-top: 50px;
	padding-bottom: 690px;
	margin-bottom: 0px;
	background-position: center;
	background-image:
		url("${pageContext.request.contextPath}/dist/images/main2.jpg");
}

p.signup-content.text-center {
	margin-top: 10px;
}

.sexcheck {
	border: 1px solid #ccc;
	margin-bottom: 15px;
	height: 34px;
	width: 100%;
	padding: 6px 12px;
	background-color: #fff;
	border-color: #d2d6de;
	color: #666;
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
		<c:import url="/WEB-INF/views/includes/logout.jsp"></c:import>
		<!-- /header -->

		<div class="content-wrapper">
			<div class="jumbotron"></div>
			<div class="user-page">
				<!-- The user image in the menu -->
				<div class="user-header">
					<h3 class="text-center">Seya World 계정 만들기</h3>
				</div>
				<form action="userinsert.do" name="f" method="get">
					<div class="user-body">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="아이디" id="id"
								maxlength="20" name="id">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="비밀번호"
								id="password" maxlength="20" name="password">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="이름"
								id="username" maxlength="20" name="username">
						</div>

						<div class="form-group">
							<input type="email" class="form-control" placeholder="이메일"
								id="email" maxlength="20" name="email">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="닉네임"
								id="nickname" maxlength="20" name="nickname">
						</div>

						<input type="hidden" name="userimage" value="userimage">

						<div class="form-group">
							<input type="text" class="form-control" placeholder="생년월일"
								id="userbirth" maxlength="20" name="userbirth">
						</div>
						<div class="sexcheck">
							성별 <input type="radio" name="sex" value=1> <label
								for="male">남자</label> <input type="radio" name="sex" value=2>
							<label for="female">여자</label>
						</div>
						<input type="submit" class="btn btn-block btn-danger form control"
							style="width: 100%" value="계정 생성">
						<p class="signup-content text-center">하나의 계정으로 모든 SeyaWord
							서비스를 이용할 수 있습니다.</p>
					</div>
				</form>
			</div>
		</div>
		<!-- /.Content Wrapper -->

		<!-- Main Footer -->

		<footer class="main-footer">

			<!-- Default to the right -->
			<strong>Copyright &copy; 2019 <a href="#">Team GeSe</a>
			</strong>

		</footer>
		<!-- /footer -->

		<div class="control-sidebar-bg"></div>

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
$('[name="f"]').on('submit', function(){
	//밸류 함수
	var id = $('#id').val();
	var password = $('#password').val();
	var email = $('#email').val();
	var username = $('#username').val();
	var nickname = $('#nickname').val();
	var userbirth = $('#userbirth').val();
	var sex = $('#sex').val();
	
	//email정규식
	var reg = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
	
	
	if(id == "" || id == null){
		alert("아이디를 입력하지 않았습니다.")
		$('#id').focus();
		return false;
	}
	//아이디체크
	
	if(id.search(/\s/) != -1) { 
		alert("아이디에 공백을 사용할 수 없습니다.");
		$('#id').focus();
		return false;
	}
	if ($('#id').val().length<4 || $('#id').val().length>12) {
		alert("아이디를 4~12자까지 입력해주세요.")
		$('#id').focus();
		return false;
	}
	
	//비밀번호 입력여부 체크
	if (password == "" || password == null) {
		console.log("비밀번호 입력안함")
		alert("비밀번호를 입력하지 않았습니다.")
		$('#password').focus();
		return false;
	}
	
	if (password == id) {
		alert("아이디와 비밀번호가 같습니다.")
		$('#password').focus();
		return false;
	}
	//비밀번호 길이 체크(4~12자 까지 허용)
	if ( $('#password').val().length<4 || $('#password').val().length>12) {
		alert("비밀번호를 4~12자까지 입력해주세요.")
		$('#password').focus();
		return false;
	}
	if (username == "" || username == null) {
		alert("이름을 입력하지 않았습니다.")
		$('#username').focus();
		return false;
	}
	if ($('#username').val().length < 2) {
		alert("이름을 2자 이상 입력해주십시오.")
		$('#username').focus();
		return false;
	}

	if (email == "") {
		alert("이메일을 입력하지 않았습니다.")
		$('#email').focus();
		return false;
	}

	if (reg.test(email) === false) {
		alert("잘못된 이메일 형식입니다.");
		email = ""
		$('#email').focus();
		return false;
	}
	if (nickname == "") {
		alert("닉네임을 입력해주십시오.");
		document.f.nickname.focus()
		return false;
	}
	if ($('#nickname').val().length > 20) {
		alert("닉네임은 20자 이내입니다.");
		$('#nickname').focus();
		return false;
	}
	if (userbirth == "" || userbirth == null) {
		alert("생년 월일을 입력해주세요");
		$('#userbirth').focus();
		return false;
	}
	if ($('#userbirth').val().length > 8||$('#userbirth').val().length < 8 ){
		alert("생년 월일을 8자로 입력해주세요./n ex) YYYYMMDD")
		return false;
	}
	if(!$("input[name='sex']:checked").val()) {
	    alert('성별을 선택하세요.');
	    return false;
	}

			
		

	
	/* for (i = 0; i < $('#id').val().length; i++) {
		console.log("대소문자확인")
		ch = $('#id').val().charAt(i)
		if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')
				&& !(ch >= 'A' && ch <= 'Z')) {
			alert("아이디는 대소문자, 숫자만 입력가능합니다.")
			$('#id').focus();
			return false;
		}
	} */

	//비밀번호
	
	/* if (document.f.id.value.indexOf(" ") >= 0) {
		alert("아이디에 공백을 사용할 수 없습니다.")
		document.f.my_id.focus()
		document.f.my_id.select()
		return false;
	} */
	
	
	
	
	/* if (document.f.id.value == "") {
		console.log("==" + f.userbirth.value.length + "==");
		alert("아이디를 입력하지 않았습니다.")
		
		f.id.focus()
		return false;
	}	 */
});


function sendIt() {
		var emailvar = document.f.email.value;
		var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
		var msg, ss, cc;

		
		//아이디 입력여부 검사
		if (document.f.id.value == "") {
			console.log("==" + f.userbirth.value.length + "==");
			alert("아이디를 입력하지 않았습니다.")
			
			f.id.focus()
			return false;
		}
		//아이디 유효성 검사 (영문소문자, 숫자만 허용)
		for (i = 0; i < document.f.id.value.length; i++) {
			ch = document.f.id.value.charAt(i)
			if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')
					&& !(ch >= 'A' && ch <= 'Z')) {
				alert("아이디는 대소문자, 숫자만 입력가능합니다.")
				document.f.id.focus()
				document.f.id.select()
				return false;
			}
		}
		//아이디에 공백 사용하지 않기
		if (document.f.id.value.indexOf(" ") >= 0) {
			alert("아이디에 공백을 사용할 수 없습니다.")
			document.f.my_id.focus()
			document.f.my_id.select()
			return false;
		}
		//아이디 길이 체크 (4~12자)
		if (document.f.id.value.length<4 || document.f.id.value.length>12) {
			alert("아이디를 4~12자까지 입력해주세요.")
			document.f.id.focus()
			document.f.id.select()
			return false;
		}
		//비밀번호 입력여부 체크
		if (document.f.password.value == "") {
			alert("비밀번호를 입력하지 않았습니다.")
			document.f.password.focus()
			return false;
		}
		if (f.password.value == f.id.value) {
			alert("아이디와 비밀번호가 같습니다.")
			document.f.password.focus()
			return false;
		}
		//비밀번호 길이 체크(4~8자 까지 허용)
		if (document.f.password.value.length<4 || document.f.password.value.length>12) {
			alert("비밀번호를 4~12자까지 입력해주세요.")
			document.f.password.focus()
			document.f.password.select()
			return false;
		}

		//비밀번호와 비밀번호 확인 일치여부 체크
		if (document.f.password.value != document.f.password.value) {
			alert("비밀번호가 일치하지 않습니다")
			document.f.password.value = ""
			document.f.password.focus()
			return false;
		}

		if (document.f.email.value == "") {
			alert("이메일을 입력하지 않았습니다.")
			document.f.email.focus()
			return false;
		}

		if (regex.test(emailvar) === false) {
			alert("잘못된 이메일 형식입니다.");
			document.f.email.value = ""
			document.f.email.focus()
			return false;
		}
		if (document.f.username.value == "") {
			alert("이름을 입력하지 않았습니다.")
			document.f.username.focus()
			return false;
		}
		if (document.f.username.value.length < 2) {
			alert("이름을 2자 이상 입력해주십시오.")
			document.f.username.focus()
			return false;
		}
		if (document.f.nickname.value == "") {
			alert("닉네임을 입력해주십시오.");
			document.f.nickname.focus()
			return false;
		}
		if (document.f.nickname.value.length > 20) {
			alert("닉네임은 20자 이내입니다.");
			document.f.nickname.focus()
			return false;
		}
		if (document.f.userbirth.value == "") {
			alert("aaa");
			document.f.userbirth.focus()
			/* alert("생년월일을 입력해주십시오.");
			 */
			return false;
		}
		
	
		
		
		
		
		
		
		
		/* if (f.userbirth.value == "") {
			alert("생년월일을 입력해주십시오.");
			document.f.nickname.focus()
			return false;
		}
 */
		/* if (f.userbirth.value.length > 8) {
			alert("생년월일은 8자로 입력해 주십시오.")
			f.userbirth.focus()
			return false;
		}

		if (document.f.userbirth.value.length < 7) {
			alert("생년월일은 8자로 입력해 주십시오.")
			document.f.userbirth.focus()
			return false;
		} */
		  if(document.f.sex.value== ""){
              alert("성별을 선택해 주십시오."); 
              document.f.nickname.focus()
            return false;
        }
		
		if (f.sex.value == 0) {
			alert("성별을 선택하지 않았습니다.")
			document.f.sex.focus()
			return false;
		}
		
	}
</script>

</html>