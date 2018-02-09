<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="root" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${root}/css/basic/reset.css">
<link rel="stylesheet" type="text/css"
	href="${root}/css/basic/commons.css">
<link rel="stylesheet" href="${root }/css/manager/member_register.css">
<link rel="stylesheet" href="${root }/css/basic/jquery-ui.css">
<link rel="stylesheet" href="${root }/css/basic/jquery-ui.theme.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.css">

<title>회원관리</title>
</head>
<body>
	<div id="sh_register">
		<div class="sh_main_text">회원정보상세</div>
		<div id="sh_board_shadow">
			<div class="sh_register_1">
				<ul>
					<li>회원정보</li>
					<li><img alt="회원 이미지" src="${root}/img/manager/man.jpg"></li>
					<li><font>아이디</font></li>
					<li></li>
					<li><font>이름</font></li>
					<li></li>
					<li><font>비밀번호</font></li>
					<li></li>
					<li><font>메일주소</font></li>
					<li></li>
					<li><font>생년월일</font></li>
					<li></li>
				</ul>
			</div>
			<div class="sh_register_2">
				<ul>
					<li style="font-size: 1.5rem;">활동</li>
					<li><font>가입일</font></li>
					<li></li>
					<li><font>최근방문일</font></li>
					<li></li>
					<li><font>댓글 : </font></li>
					<li><font>방문수 : </font></li>
				</ul>
			</div>
			<div class="sh_register_3">
				<button type="button" class="bf-button sh_button_out">강제탈퇴</button>
				<button type="button" class="bf-button">수정</button>
				<button type="button" class="bf-button"
					onclick="${root}/manager/memberPayDetail.do">결제페이지</button>
				<button type="button" class="bf-button"
					onclick="${root}/manager/memberMember.do">목록</button>
			</div>
		</div>


	</div>
	<script type="text/javascript" src="${root}/script/basic/jquery.js"></script>
	<script type="text/javascript" src="${root }/script/basic/commons.js"></script>
	<script type="text/javascript" src="${root}/script/basic/jquery-ui.js"></script>
	<script type="text/javascript" src="${root}/script/manager/total.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script>

	<script type="text/javascript">
		$(function() {

			$('.sh_button_out').click(function(event) {
				$.confirm({
					title : '강제탈퇴',
					content : '정말로 이 회원을 탈퇴 시키겠습니까?',
					buttons : {
						confirm : function() {
							$.alert({
								title : '탈퇴',
								content : '강제탈퇴 시켰습니다.',
								buttons : {
									ok : function() {
										location.href = "${root}/manager/memberMember.do";
									}
								}
							});
						},
						cancel : function() {
							$.alert('잘 참으셨습니다ㄲㄲㄲ.');
						}
					}
				});
			});
		});
	</script>
</body>
</html>