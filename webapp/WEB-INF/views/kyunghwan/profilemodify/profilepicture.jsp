<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		<!-- 수정 내용 제목 -->
			<span style="width: 110px; height: auto; display:inline-block; font-size: 16px;">
			<!-- 사용자 이름 변수가 들어가야합니다. -->
				이름
			</span>
			
			<!-- 수정 전 내용 -->
			<span style="width: 530px; height: auto; display:inline-block; font-size: 22px;">
				<!-- 사용자의 이름이 변수로 여기에 들어와야함 -->
				사진을 추가하여 맞춤 설정을 합니다.
			</span>

		<!-- 프로필사진 링크 이미지 -->
		<span style="width: 100px; height: auto; display:inline-block; ">
				<!-- 프로필사진 이미지 넣어야하는 칸-->
				<button class="btn btn-warning active picturebtn:hover" type="button" data-toggle="modal" data-target="#profilepictureModal" data-backdrop="static" style="background-color: #dd4b39;">파일 업로드</button>
		</span>


	<!-- 모달 변경창 -->
	<div class="modal" id="profilepictureModal" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<!-- 모달 헤더 들어갈값 -->
				<div class="modal-body">
					<h3>프로필 사진변경</h3>
				</div>
				
				<div style="margin-left: 5%; margin-right: 5%;">
 					<label for="exampleInputFile">프로필 사진</label>
   					<input type="file" id="exampleInputFile">
   				</div>
   				
				<div class="modal-footer">
					<button type="button" class="btn btn-default"
						data-dismiss="modal" style="border-color: #ff6666;">Save</button>
					<button type="button" class="btn" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
