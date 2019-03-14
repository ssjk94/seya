<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!--  data-backdrop="static" data-keyboard="false" -->
	<!-- The Modal -->								<!-- 바깥쪽 누른다고 탈출 못하게 하는 문장 -->
	<div id="pairSetGameModal" class="modal fade" data-backdrop="static" data-keyboard="false">
	  <div class="modal-dialog pair-dialog">
	    <div class="modal-content pair-content">
	      <div class="modal-header pair-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		    <!-- 설명이 들어갈 div -->
			<div class="gameInfo">
			<!-- GameTitle div -->
				<div id="gameName" class="pull-left">
					<p>제목 : &nbsp;&nbsp;</p>
					<b></b>
				</div>
				<!-- Score div -->
				<div id="gameScore" class="pull-left">
					<p>점수 : &nbsp;&nbsp;</p>
					<b></b>점
				</div>
				<!-- nowSituation div -->
				<div id="pairNowSituation" class="pull-left">
					<p>현재상황 : &nbsp;&nbsp;</p>
					<b></b>
					<b></b>
				</div>
				<!-- Life div -->
				<div class="pull-right">
					<p>목숨 : &nbsp;&nbsp;</p>
					<img id="pairLife1" alt="" src="/dist/images/heart.png">
					<img id="pairLife2" alt="" src="/dist/images/heart.png">
					<img id="pairLife3" alt="" src="/dist/images/heart.png">
				</div>
			
			</div>
			
			<!-- 시간이 들어갈 div -->
			<div class="time-bar">
				<div class="progress">
					<div
						class="progress-bar progress-bar-primary progress-bar-striped"
						role="progressbar" aria-valuenow="100" aria-valuemin="0"
						aria-valuemax="100" style="width: 100%">
						<span class="sr-only">40% Complete (success)</span>
					</div>
				</div>
			</div>
		</div>
	      <div class="modal-body pair-body">
	        
	      	 <div class="clearBox">
				
				<div class="click">
					<div id="word1" class="pairSetGameWordBox">
						<span></span>
					</div>
				</div>
					
				<div class="click">
					<div id="word2" class="pairSetGameWordBox">
						
						<span></span>
					</div>
				</div>
				
				<div class="click">
					<div id="word3" class="pairSetGameWordBox">
						
						<span></span>
					</div>
				</div>
				
				<div class="click">
					<div id="word4" class="pairSetGameWordBox">
						
						<span></span>
					</div>
				</div>
					
			</div>
		
		
			<div class="clearBox">
				
				<div class="click down">
					<div id="mean1"  class="pairSetGameMeanBox">
						<span></span>
					</div>
			    </div>
			    
			    <div class="click">
					<div id="mean2"  class="pairSetGameMeanBox">
						<span></span>
					</div>
			    </div>
			    
			    <div class="click">
					<div id="mean3"  class="pairSetGameMeanBox">				
						<span></span>
					</div>
			    </div>
			    
			    <div class="click">
					<div id="mean4"  class="pairSetGameMeanBox">
						<span></span>
					</div>
			    </div>
					
			</div>
	 
	      </div>
	      
	      
	      <div class="modal-footer pair-footer">
	        	<button id="pairExit"  type="button" class="btn btn-primary" data-dismiss="modal">나가기</button>	
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->

</body>
</html>