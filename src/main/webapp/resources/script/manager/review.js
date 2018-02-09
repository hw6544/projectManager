/* review 적립금 부여*/
$(function() {
	/*
	 * $( "#dialog" ).dialog({ autoOpen: false }); $("#dialog").dialog({
	 * buttons: [ { text: "Ok", icon: "ui-icon-heart", click: function() { $(
	 * this ).dialog( "close" ); } }] }); $('.sh_button_point').click(function() {
	 * $("#dialog").dialog("open"); $(this).css("pointer-events", "none");
	 * $(this).css("background-color", "gray"); });
	 */

	$('.sh_button_point').click(function(event) {
		$.confirm({
			title : '적립금',
			content : '적립금을 부여하시겠습니까?!',
			buttons : {
				confirm : function() {
					$.alert('적립금 부여 완료');
					var target = $(event.target);
					if (target.is("button")) {
						target.css("background-color", "gray");
						target.css("pointer-events", "none");
					}
				},
				cancel : function() {
					$.alert('적립금을 부여하지않았습니다.');
				}

			},
			type : '#A59AF6'
		});
	});
});