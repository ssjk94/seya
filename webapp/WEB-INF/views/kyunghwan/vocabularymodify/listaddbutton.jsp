<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!-- 단어 리스트 추가할 버튼  style="margin-top: 50px;margin-left: 20%;margin-right: 20%;" -->
	<div style="width: 200px; margin-left: 550px; padding-top: 20px;">
		<button id="addvocalist" type="button" class="btn btn-danger btn-block btn-lg vocamodifybtn">단어 추추</button>
	</div>
	
	<!-- 단어 리스트 들어가는 div -->

<section id="vocalist">
	
		<c:import url="/WEB-INF/views/kyunghwan/vocabularymodify/vocaonepage.jsp"></c:import>
		
</section>			



