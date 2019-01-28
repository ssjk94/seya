<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>
<link href="${pageContext.request.contextPath}/assets/css/guestbook.css"
	rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>

	<div id="container">

		<!-- header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<!-- /header -->

		<!-- navigation -->
		<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>
		<!-- /navigation -->

		<div id="wrapper">
			<div id="content">
				<div id="guestbook">

					<%-- 					<form action="${pageContext.request.contextPath}/gba/add" method="get"> --%>

					<table>
						<tr>
							<td>이름</td>
							<td><input type="text" name="name" /></td>
							<td>비밀번호</td>
							<td><input type="password" name="password" /></td>
						</tr>
						<tr>
							<td colspan=4><textarea name="content" id="content"></textarea></td>
						</tr>
						<tr>
							<td colspan=4 align=right><input id="btnAdd" type="submit"
								VALUE="확인 " /></td>
						</tr>
					</table>
					<!-- 					</form> -->

					<ul>
						<c:forEach items="${requestScope.usersList}" var="usersVo">

							<li>
								<table>
									<tr>
										<td>${usersVo.userNo}</td>
										<td>${usersVo.id}</td>
										<td>${usersVo.password}</td>
										<td>${usersVo.userName}</td>
										<td>${usersVo.email}</td>
									</tr>
									<tr>
										<td>${usersVo.nickname}</td>
										<td>${usersVo.userImage}</td>
										<td>${usersVo.userBirth}</td>
										<td>${usersVo.sex}</td>
										<td>${usersVo.userAccess}</td>
									</tr>
								</table> <br>
							</li>
						</c:forEach>

					</ul>

				</div>
				<!-- /guestbook -->
			</div>
			<!-- /content -->
		</div>
		<!-- /wrapper -->

		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- /footer -->

	</div>
	<!-- /container -->

</body>
<!-- 
<script type="text/javascript">
	$("#btnAdd").click(function(){
		console.log("ajax 실행");
		var name = $("[name=name]").val();
		var password = $("[name=password]").val();
		var content = $("[name=content]").val();
		console.log(name + " " + password + " " + content);
		
		$.ajax({
			url : "${pageContext.request.contextPath}/gba/add",
			type : "post",
// 			contentType : "application/json",
			data : {name: name, password: password, content: content},
			dataType : "json",
			success : function(count){
			/*성공시 처리해야될 코드 작성*/
				console.log(count);
			},
			error : function(XHR, status, error) {
			console.error(status + " : " + error);
			}
		});
	});
</script>
 -->
</html>