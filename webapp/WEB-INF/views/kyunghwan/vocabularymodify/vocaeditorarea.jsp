<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
	<div style="margin-left: 30px;">
		<textarea id="vocaarea" class="form-control" rows="6" placeholder="단어1 뜻1&#13;&#10;단어2 뜻2" style="width: 720px;"></textarea>
	</div>

</body>


<script type="text/javascript">
	$(function(){
	    $('#vocaarea').keydown(function(e){
	        if(e.keyCode == 9){
	            $(this).val($(this).val()+' ')
	            return false
	        }
	    });
	});
</script>
