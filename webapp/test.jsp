<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

	<div class="title">
  <h1>Search</h1>
</div>

<div class="search">
  <form>
    <input type="text" name="search" placeholder="Search something...">
    <button type="submit">
      <i>서치</i>
    </button>
  </form>
  
  <div class="open-button"></div>
</div>

<div class="overlay hidden"></div>

</body>

<script type="text/javascript">

$('.open-button').click(function(){
	  $('.search').addClass('active');
	  $('.overlay').removeClass('hidden');
	  $('input').focus(); // If there are multiple inputs on the page you might want to use an ID
	});

	$('.overlay').click(function() {
	  $('.search').removeClass('active');
	  $(this).addClass('hidden');
	});

</script>

</html>