<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${root}/css/myPage/payment/orderhistoryCancel.css">
</head>
<body>
	<div class="orderhistory">
		<div class="bf-title-row title-type4">
			<h3>결재 내역</h3>
		</div>

		<div style="overflow: hidden; margin-top: 1rem;">
			<ul class="orderhistory_leftside">
				<li>주문번호</li>
				<li>구분</li>
				<li>주문금액</li>
				<li>쿠폰 할인</li>
				<li>포인트 상품권</li>
				<li>리디캐시 사용액</li>
				<li>리디포인트 사용액</li>
				<li>PG결제금액</li>
				<li>결제수단</li>
				<li>적립 리디포인트</li>
			</ul>
			<ul class="orderhistory_rightside">
				<li>2018011539796034</li>
				<li><a href="#">소설로 읽는 내 인생의 영화</a></li>
				<li>0원</li>
				<li>0원</li>
				<li>0원</li>
				<li>0원</li>
				<li>0원</li>
				<li>0원</li>
				<li>리디캐시</li>
				<li>0원</li>
			</ul>
		</div>
		<div>
			<div>
				<ul class="menu_notice_tip">
					<li>구매 취소는 결제일로부터 7일 이내에 다운로드 또는 스트리밍으로 이용하지 않은 도서만 가능합니다.</li>
				</ul>
			</div>
			<div style="text-align: right; margin-top: 1rem;">
				<button class="bf-button" onclick="javascript:alert('미구현')">결제 취소</button>
			</div>

		</div>

		<div class="orderhistory orderhistory_top">
			<div class="orderhitory_gift">선물 정보</div>
			<div style="overflow: hidden;">
				<ul class="orderhistory_leftside">
					<li>선물 받는 사람</li>
					<li>연락처</li>
					<li>선물 메세지</li>
				</ul>
				<ul class="orderhistory_rightside">
					<li>받는 사람 정보</li>
					<li>전화 번호</li>
					<li>전송한 메세지</li>
				</ul>
			</div>
			<div class="orderhistory_resubmit">
				<button class="bf-button" onclick="javascript:alert('미구현')">재전송</button>
				<br> <br> <label style="font-size: 12px;">재전송은 최대
					3번만 가능합니다.</label>
			</div>
		</div>
	</div>
</body>
</html>