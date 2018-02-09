<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="root" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" type="text/css" href="${root}/css/present/present.css">
<link rel="stylesheet" type="text/css" href="${root}/css/present/presentPay.css">
<link rel="stylesheet" type="text/css" href="${root}/css/order/order.css">
<title>Insert title here</title>
</head>
<body>
	<div style="width: 100%">
		<div style="text-align: center;">
			<div>
				<h2 class="present_header">전자책 선물로 마음을 전하세요!</h2>
				<p class="present_header_text">
					좋은 책을 나누는 즐거움<br>문자, 이메일을 통해 간편하게 전자책을 선물하세요!
				</p>
				<div class="present_header_img">
					<a><img width="200px" height="300px"></a>
				</div>
				<span>감옥도 살 만한 동네 안내서</span><br> <br> <span>열린책들
					디지털콘텐츠팀</span><br> <br>
			</div>
		</div>

		<div class="present_content">
			<div class="present_send">
				<div class="present_content_text">보내는 분</div>
				<div>
					<input type="text" class="present_content_text_input">
				</div>
			</div>
			<div class="present_receiver">
				<div class="present_content_text">선물 받는 분</div>
				<div style="overflow: hidden;">
					<label class="present_receiver_id">리디북스 아이디</label><input
						class="present_receiver_id_input" type="text">
				</div>

				<span class="present_receiver_id_tootip">받는 분이 가지고 있는 책은 선물 할
					수 없습니다.</span>
			</div>
			<div class="present_msg">
				<div class="present_content_text">선물 메시지</div>
				<div>
					<textarea class="present_msg_textarea"></textarea>
				</div>
			</div>
				<div class="present_bt">
					<button class="order_right_menu_paybutton bf-button bf-animated-btn" onclick="javascript:location.href='${root}/present/presentPay.do'">결제하기가기</button>
				</div>
		</div>
	</div>
</body>
</html>