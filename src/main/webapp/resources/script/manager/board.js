$(function() {
	/* boardList 삭제 수정버튼*/
	$(".sh_list_delete").click(function(del) {
		alert("di");
			$.confirm({
				title : '삭제',
				content : '정말 삭제하시겠습니까?!',
				buttons : {
					confirm : function() {
						$.alert('삭제 완료');
						var target = $(del.target);
		
						}
					},
					cancel : function() {
						$.alert('삭제 되지않았습니다.');
					}
			});
		});
	/* board_contact 전체선택!*/
	$(".sh_total_search").click(function() {
		// 클릭되었으면
		if ($(".sh_total_search").prop("checked")) {
			// input태그의 class이 chk인 태그들을 찾아서 checked옵션을 true로 정의
			$(".sh_choice_search").prop("checked", true);
			// 클릭이 안되있으면
		} else {
			// input태그의 class이 chk인 태그들을 찾아서 checked옵션을 false로 정의
			$(".sh_choice_search").prop("checked", false);
		}
	})
})