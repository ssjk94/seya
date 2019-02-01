<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach items="${requestScope.selectFlashcardList}" var="flashcardVo">
	<div>
		<!-- word -->
		<div>
			<p>${flashcardVo.wordName}</p>
		</div>
	</div>

	<div>
		<!-- mean -->
		<div>
			<span>${flashcardVo.meanName}</span>
		</div>
	</div>
</c:forEach>
