<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach items="${requestScope.selectFlashcardList}" var="flashcardVo">
	<div>
		<!-- word -->
		<div>
			<span class="view-hidden">${flashcardVo.wordno}</span> <span>${flashcardVo.wordname}</span>
		</div>
	</div>

	<div>
		<!-- mean -->
		<div>
			<span class="view-hidden">${flashcardVo.meanno}</span> <span>${flashcardVo.meanname}</span>
		</div>
	</div>
</c:forEach>
