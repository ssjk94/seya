<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.addword {
	float: left;
}

.addmeaning {
	float: left;
}

.linetext {
    margin-left: 30px;
    display: block;
    margin-top: 5px;
    float: left;
    display: block;
    font-size: 16px;
    padding-right: 15px;
}
.addline{
 	padding-left: 35px;
 	margin-top:20px;
 	height: 30px;
}

.form-control-lee {
	display: block;
	width: 270px;
	height: 34px;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
</style>

<div id="voca2">
	<!-- 1111111111111111111 -->
	<!-- 	<div style="clear: both;margin-left: 30px; padding-top: 20px;">
			
				<div style="float: left;  padding-right: 2%;">
					<h5>단어</h5>
				</div>
				<div style="float: left; width: 20%;">
					<input type="text" class="form-control" name="vo" placeholder="ex) apple" style="width: 100%;">
				</div>
				<div style="float: left; padding-left: 5%;  padding-right: 2%;">
					<h5>뜻</h5>
				</div>
				<div style="float: left; width: 60%;">
					<input type="text" class="form-control" name="ca" placeholder="ex) 사과" style="width: 100%;">
				</div>
				
				</div> -->

	<div class="addline">
		<div class="addword">
			<div class="linetext">단어</div>
			<input type="text" class="form-control-lee" name="vo"
				placeholder="ex)apple">
		</div>
		<div class="addmeaning">
			<div class="linetext">뜻</div>
			<input type="text" class="form-control-lee" name="ca"
				placeholder="ex) 사과">
		</div>
	</div>
	<!-- 1111111111111111111 -->
	<div class="addline">
		<div class="addword">
			<div class="linetext">단어</div>
			<input type="text" class="form-control-lee" name="vo"
				placeholder="ex)apple">
		</div>
		<div class="addmeaning">
			<div class="linetext">뜻</div>
			<input type="text" class="form-control-lee" name="ca"
				placeholder="ex) 사과">
		</div>
	<!-- 1111111111111111111 -->
	</div>
		<div class="addline">
		<div class="addword">
			<div class="linetext">단어</div>
			<input type="text" class="form-control-lee" name="vo"
				placeholder="ex)apple">
		</div>
		<div class="addmeaning">
			<div class="linetext">뜻</div>
			<input type="text" class="form-control-lee" name="ca"
				placeholder="ex) 사과">
		</div>
	</div>
</div>
