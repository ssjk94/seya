<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 수정 내용 제목 -->
			<span style="width: 110px; height: auto; display:inline-block; font-size: 16px;">
			<!-- 사용자 이름 변수가 들어가야합니다. -->
				프로필 내용
			</span>
			
			<!-- 수정 전 내용 -->
			<span style="width: 560px; height: auto; display:inline-block; font-size: 22px;">
				<!-- 사용자의 이름이 변수로 여기에 들어와야함 -->
				항상 행복한 일만 가득할 거예요
			</span>

	<!-- 수정 링크 -->
	<span style="height: auto; display:inline-block; ">
		<a class="btn" role="button" data-toggle="modal" data-target="#profilecontentModal" data-backdrop="static"> 
			<!-- 이미지 --> 
			<span class="glyphicon glyphicon-pencil" aria-hidden="true" style="color: #dd4b39;"></span>
		</a>
	</span>

	<!-- 모달 변경창 -->
	<!-- 고정을 위해서 모달 수정해야함 -->
	<div class="modal" id="profilecontentModal" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-body">
					<h3>내용 수정</h3>
				</div>
				<div style="margin-left: 5%; margin-right: 5%;">
					<p>프로필</p>
					<input type="text" class="form-control"
						placeholder="프로필 내용을 입력해주세요.">
				</div>
				<div class="modal-footer" style="border-top: 0px;">
					<!-- 버튼 -->
					<button type="button" class="btn btn-default"
						data-dismiss="modal" style="border-color: #ff6666;">Save</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>