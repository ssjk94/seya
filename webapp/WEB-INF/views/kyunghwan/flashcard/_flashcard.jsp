<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/dist/jquery/jquery-1.12.4.js"></script>
<title>Insert title here</title>

<style type="text/css">
.flashcardcontainer {
	width: 790px;
	height: 450px;
	margin-left: 15px;
}

.flashcardbox {
	height: 370px;
	background-color: #fff;
	box-shadow: 1px 1px 1px 1px #ddd;
	border: 2px solid rgba(221, 221, 221, 0.2);
	border-style: ridge;
	font-size: 72px;
	text-align: center;
}

.flashcontrolbox {
	height: 85px;
	margin-top: 2px;
	background-color: rgb(229, 85, 67);
	padding-left: 295px;
}

.img-circle-btn {
	border-radius: 50%;
	width: 60px;
	height: 60px;
	background-color: #fff;
}

.gly-size {
	font-size: 55px;
}

.chkbox-size {
	width: 25px;
	height: 25px;
	font-size: 25px;
}

.flashcardattach {
	float: left;
}

.flashcardclear {
	clear: both;
}

.modiandchk {
	margin-left: 30px;
	margin-right: 30px;
}

.flashbtn {
	cursor: pointer;
}

#leftbtn.img-circle-btn:hover {
	background-color: #e7ff09;
}

#rightbtn.img-circle-btn:hover {
	background-color: #e7ff09;
}

#word {
	margin-top: 150px;
}

#mean {
	font-size: 30px;
	margin-top: 180px;
}

.glyphicon-pencil:hover {
	color: #fff;
}

#flashWord {
	height: 370px;
	box-shadow: 1px 1px 1px 1px #ddd;
	border: 2px solid rgba(221, 221, 221, 0.2);
	border-style: ridge;
}

#flashMean {
	height: 370px;
	box-shadow: 1px 1px 1px 1px #ddd;
	border: 2px solid rgba(221, 221, 221, 0.2);
	border-style: ridge;
}
</style>

<!-- 테두리 마지막에 없애야함 -->

</head>
<script type="text/javascript">
	var wordList = new Array();
	var meanList = new Array();
	var noList = new Array();
	var wordbookNo = '${flashcardVo.wordbookNo}';
	var i = 0;
	var j = 0;
</script>
	<c:forEach items="${requestScope.selectFlashcardList}" var="flashcardVo">
		<script type="text/javascript">
			noList[i] = '${flashcardVo.wordNo}';
			wordList[i] = '${flashcardVo.wordName}';
			meanList[i] = '${flashcardVo.meanName}';
			i++;
		</script>
	</c:forEach>
<script type="text/javascript">
	$(document).ready(
			function() {
				i = 0;
				j = 0;
				$("#word").text(wordList[i]);
				$("#mean").text(meanList[i]);
				$("#mean").hide();

				function clickWm() {
					if (j == 0) {
						j = 1;
						$("#flashShow").fadeOut(100, "swing", function() {
							$("#word").hide();
							$("#mean").show();
							$("#flashShow").fadeIn(100, "swing")
						});
					} else {
						j = 0;
						$("#flashShow").fadeOut(100, "swing", function() {
							$("#mean").hide();
							$("#word").show();
							$("#flashShow").fadeIn(100, "swing")
						});
					}
				}
				function btnRight() {
					if (i != wordList.length - 1) {
						i++;
						$("#flashShow").fadeOut(100, "swing", function() {
							if (j != 0) {
								j = 0;
								$("#mean").hide();
								$("#word").show();
							}
							$("#word").text(wordList[i]);
							$("#mean").text(meanList[i]);
							$("#flashShow").fadeIn(100, "swing");
						});
					}
				}
				function btnLeft() {
					if (i != 0) {
						i--;
						$("#flashShow").fadeOut(100, "swing", function() {
							if (j != 0) {
								j = 0;
								$("#mean").hide();
								$("#word").show();
							}
							$("#word").text(wordList[i]);
							$("#mean").text(meanList[i]);
							$("#flashShow").fadeIn(100, "swing");
						});
					}
				}
				function flashcardModify() {
					if (j == 0) {
						var reword = prompt("단어를 수정합니다.", "");
						if (reword) {
							wordList[i] = reword;
							$("#word").text(wordList[i]);
							updateFlashcard(noList[i], wordList[i],
									meanList[i], wordbookNo);
						}
					} else {
						var remean = prompt("의미를 수정합니다.", "");
						if (remean) {
							meanList[i] = remean;
							$("#mean").text(meanList[i]);
							updateFlashcard(noList[i], wordList[i],
									meanList[i], wordbookNo);
						}
					}
				}
				$(function() {
					$(document).on("keyup", function(e) {
						console.log(e);
						switch (e.keyCode) {
						case 9:
							console.log("tab");
							flashcardModify();
							break;
						case 13:
						case 38:
						case 40:
							console.log("wm");
							clickWm();
							break;
						case 37:
							console.log("left");
							btnLeft();
							break;
						case 39:
							console.log("right");
							btnRight();
							break;
						}
					});
				});

				$(function() {
					$("#wm-over").click(function() {
						clickWm()
					});
				});
				$(function() {
					$("#rightbtn").click(function() {
						btnRight()
					});
				});
				$(function() {
					$("#leftbtn").click(function() {
						btnLeft()
					});
				});
				$(function() {
					$(".glyphicon-pencil").click(function() {
						flashcardModify()
					});
				});
			});
</script>
<body>

	<!-- width 790px height 450-->
	<div class="panel panel-default flashcardcontainer">
		<!-- content box -->
		<div id="wm-over" class="flashcardbox">
			<!-- word -->
			<div id="flashShow">
				<p id="word"></p>
				<p id="mean"></p>
			</div>
		</div>
		<!-- control box -->
		<c:import
			url="/WEB-INF/views/kyunghwan/flashcard/flashcardcontrol.jsp"></c:import>
	</div>
</body>

<script type="text/javascript">
	function updateFlashcard(wordNo, wordName, meanName, wordbookNo) {
		console.log(wordNo + ", " + wordName + ", " + meanName + ", "
				+ wordbookNo);
		$.ajax({
			url : "${pageContext.request.contextPath}/flashcard/update",
			type : "post",
			data : {
				wordNo : noList[i],
				wordName : wordList[i],
				meanName : meanList[i],
				wordbookNo : wordbookNo
			},
			dataType : "html",
			success : function() {
				/*성공시 처리해야될 코드 작성*/
				//				alert('삭제되었습니다');
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	};
</script>
</html>