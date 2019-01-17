<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="${pageContext.request.contextPath}/assets/css/guestbook.css" rel="stylesheet" type="text/css">
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
					
					<form action="${pageContext.request.contextPath}/gb/add" method="get">
						
						<table>
							<tr>
								<td>이름</td><td><input type="text" name="name" /></td>
								<td>비밀번호</td><td><input type="password" name="password" /></td>
							</tr>
							<tr>
								<td colspan=4><textarea name="content" id="content"></textarea></td>
							</tr>
							<tr>
								<td colspan=4 align=right><input type="submit" VALUE=" 확인 " /></td>
							</tr>
						</table>
					</form>
					
					<ul>
						<li>
							<table>
								<tr>
									<td>${cnt}</td>
									<td>${param.name}</td>
									<td>2017-07-20 11:22:30</td>
									<td><a href="">삭제</a></td>
								</tr>
								<tr>
									<td colspan=4>
									${param.content}
									</td>
								</tr>
							</table>
							<br>
						</li>
					</ul>
					
				</div><!-- /guestbook -->
			</div><!-- /content -->
		</div><!-- /wrapper -->
		
		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- /footer -->
		
	</div> <!-- /container -->

</body>
</html>