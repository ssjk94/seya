<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.boardList thead th {
	height: 54px;
	font-size: 14px;
	font-weight: normal;
	color: white;
	background-color: #dd4b39;
	text-align: center;
}

.div_ranking_list {
	float: right;
	height: 200px;
	margin-left: 100px;
}

.boardList {
	position: static;
	margin-bottom: 27px;
	border-bottom: 2px solid black;
	margin-right: 20px;
	float: right;
}

.small, small {
	font-size: 85%;
	padding-right: 10px;
}

.trline {
	border-bottom: 1px solid black;
	margin-bottom: 5px;
	text-align: center;
}

.grade .small img {
	float: left;
}

.td {
	padding: 5px;
}
</style>

<div id="div_ranking_list">

	<div class="boardList">
		<table summary="게시판 리스트">
			<colgroup>
				<col width="80px">
				<col width="192px">
				<col width="73px">
			</colgroup>
			<thead>
				<tr>
					<th>랭킹</th>
					<th>닉네임</th>
					<th>점수</th>
				</tr>
			</thead>
		</table>
		<div class="relative">
			<table summary="게시판 리스트">
				<colgroup>
					<col width="80px">
					<col width="192px">
					<col width="73px">
				</colgroup>
				<tbody>
					<tr class="trline">
						<td>1</td>
						<td class="left"><span class="grade small"> <img
								src="/seya/dist/images/profile1.png" class="img-circle imgsize"
								alt="User Image">
						</span> <!-- <a href="javascript:;"
							onclick="GetUserInfo('user','1560738298',this)"> --> <b>seya</b></a></td>
						<td><span class="mmr small"> </span> 5,355 점</td>
					</tr>
					<tr class="trline">
						<td>2</td>
						<td class="left"><span class="grade small"> <img
								src="/seya/dist/images/profile1.png" class="img-circle imgsize"
								alt="User Image">
						</span> <!-- <a href="javascript:;"
							onclick="GetUserInfo('user','1560738298',this)"> --> <b>seya</b></a></td>
						<td><span class="mmr small"> </span> 5,355 점</td>
					</tr>
					<tr class="trline">
						<td>3</td>
						<td class="left"><span class="grade small"> <img
								src="/seya/dist/images/profile1.png" class="img-circle imgsize"
								alt="User Image">
						</span> <!-- <a href="javascript:;"
							onclick="GetUserInfo('user','1560738298',this)"> --> <b>seya</b></a></td>
						<td><span class="mmr small"> </span> 5,355 점</td>
					</tr>
					<tr class="trline">
						<td>4</td>
						<td class="left"><span class="grade small"> <img
								src="/seya/dist/images/profile1.png" class="img-circle imgsize"
								alt="User Image">
						</span> <!-- <a href="javascript:;"
							onclick="GetUserInfo('user','1560738298',this)"> --> <b>seya</b></a></td>
						<td><span class="mmr small"> </span> 5,355 점</td>
					</tr>
					<tr class="trline">
						<td>5</td>
						<td class="left"><span class="grade small"> <img
								src="/seya/dist/images/profile1.png" class="img-circle imgsize"
								alt="User Image">
						</span> <!-- <a href="javascript:;"
							onclick="GetUserInfo('user','1560738298',this)"> --> <b>seya</b></a></td>
						<td><span class="mmr small"> </span> 5,355 점</td>
					</tr>
					<tr class="trline">
						<td>6</td>
						<td class="left"><span class="grade small"> <img
								src="/seya/dist/images/profile1.png" class="img-circle imgsize"
								alt="User Image">
						</span> <!-- <a href="javascript:;"
							onclick="GetUserInfo('user','1560738298',this)"> --> <b>seya</b></a></td>
						<td><span class="mmr small"> </span> 5,355 점</td>
					</tr>
					<tr class="trline">
						<td>7</td>
						<td class="left"><span class="grade small"> <img
								src="/seya/dist/images/profile1.png" class="img-circle imgsize"
								alt="User Image">
						</span> <!-- <a href="javascript:;"
							onclick="GetUserInfo('user','1560738298',this)"> --> <b>seya</b></a></td>
						<td><span class="mmr small"> </span> 5,355 점</td>
					</tr>
					<tr class="trline">
						<td>8</td>
						<td class="left"><span class="grade small"> <img
								src="/seya/dist/images/profile1.png" class="img-circle imgsize"
								alt="User Image">
						</span> <!-- <a href="javascript:;"
							onclick="GetUserInfo('user','1560738298',this)"> --> <b>seya</b></a></td>
						<td><span class="mmr small"> </span> 5,355 점</td>
					</tr>
					<tr class="trline">
						<td>9</td>
						<td class="left"><span class="grade small"> <img
								src="/seya/dist/images/profile1.png" class="img-circle imgsize"
								alt="User Image">
						</span> <!-- <a href="javascript:;"
							onclick="GetUserInfo('user','1560738298',this)"> --> <b>seya</b></a></td>
						<td><span class="mmr small"> </span> 5,355 점</td>
					</tr>
					<tr class="trline">
						<td>10</td>
						<td class="left"><span class="grade small"> <img
								src="/seya/dist/images/profile1.png" class="img-circle imgsize"
								alt="User Image">
						</span> <!-- <a href="javascript:;"
							onclick="GetUserInfo('user','1560738298',this)"> --> <b>seya</b></a></td>
						<td><span class="mmr small"> </span> 5,355 점</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- //Board list -->
	</div>

</div>