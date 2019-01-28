/**
 *버튼에 마우스를 올렸을때 색이 바뀌게 하는 js 
 */

<!-- 단어추가 페이지나오게하는 함수 -->
	$("#addvocalist").off("click").on("click", function(e) {

		var div = document.createElement('div');

		div.innerHTML = document.getElementById('voca2').innerHTML;

		document.getElementById('vocalist').appendChild(div);

		//추가되는 리스트 확인창	    
		console.log(document.getElementById('vocalist').innerHTML);

	});
<!-- 탭키 먹히게하는 함수 -->

	$(function() {
		$('#vocaarea').keydown(function(e) {
			if (e.keyCode == 9) {
				$(this).val($(this).val() + ' ')
				return false
			}
		});
	});
