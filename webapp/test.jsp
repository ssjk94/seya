<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<style type="text/css">
			
		
	</style>
	
	
</head>
<body>

	<div class="time-bar">
				<div class="progress">
					<div
						class="progress-bar progress-bar-primary progress-bar-striped"
						role="progressbar" aria-valuenow="100" aria-valuemin="0"
						aria-valuemax="100" style="width: 0%">
						<span class="sr-only"></span>
					</div>
				</div>
			</div>


</body>

<script type="text/javascript">
$(".time-bar").on("click",function(){
	start(0);
});

function time(){
	for(var i=1;i<101;i++){
		setTimeout(function() {  $(".progress-bar").css("width",i+"%");
		console.log(i); }, 1800);
	}
}


	function start(counter) {

		if (counter < 101) {

			setTimeout(function() {

				counter++;
				
				$(".progress-bar").css("width",counter+"%");

				start(counter);

			}, 600);

		}

	}
</script>

</html>