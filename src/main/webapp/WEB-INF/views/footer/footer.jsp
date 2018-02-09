<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="root" value="${pageContext.request.contextPath}" scope="session" />
<link href="${root}/resources/css/footer/footer.css" type="text/css" rel="stylesheet">
<link href="${root}/resources/css/footer/order.css" type="text/css" rel="stylesheet">
<%-- <script type="text/javascript" src="${root}/resources/script/basic/jquery.js"></script> --%>
<script type="text/javascript">

	$(function() {
		for (var i = 0; i < 100; i++) {
			$(".footer_header_notice_change").delay(1000).animate({
				top : "-=1rem"
			}, 2000, function() {
				$(".footer_header_notice_change").first().css("top", "2rem")
			});
			$(".footer_header_notice_change").delay(1000).animate({
				top : "-=1rem"
			}, 2000, function() {
				$(".footer_header_notice_change").eq(1).css("top", "1rem")
			});
			$(".footer_header_notice_change").delay(1000).animate({
				top : "-=1rem"
			}, 2000, function() {
				$(".footer_header_notice_change").eq(2).css("top", "0rem")
			});
		}
		
		

	});
</script>
<title>Insert title here</title>
</head>
<body>
	<div class="footer_background">
		<div class="footer_header">
			<div class="footer_header_border">
				<span class="footer_header_notice">공지사항▶</span>
				<div class="footer_haeder_notice_text">
					<ul>
						<li class="footer_header_notice_change"><a>[업데이트] iOS 앱 v8.8.4</a></li>
						<li class="footer_header_notice_change"><a>[업데이트] 안드로이드 앱 v8.8.6</a></li>
						<li class="footer_header_notice_change"><a>[안내] 우리(체크)카드 결제 제한</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="footer_content">
			<div class="footer_conter_float">
				<div class="footer_left_content">
					<span class="footer_left_content_call">1644-03331</span>
					<ul class="order-type-list footer_left_content_padding1">
						<li><a href="#">고객센터</a></li>
						<li><a href="#">자주 묻는 질문</a></li>
						<li><a href="#">1:1 문의하기</a></li>
					</ul>
				</div>
				<div class="footer_left_content_padding2">
					<pre>3조 (주) / 팀장 박성호 / 서울특별시 강남구 테헤란로 132(역삼동) 한독약품빌딩 8층 쌍용교육센터<br>사업자등록번호 214-85-29296 <br>개인정보보호책임자 : 김도현</pre>
					<ul class="footer_left_content_copyright">
						<li>이용약관</li>
						<li>개인정보처리방침</li>
						<li>청소년보호정책</li>
						<li>사업자 정보 확인</li>
					</ul>
					<span>© RIDI Corp.</span>
				</div>
			</div>

			<div class="footer_right_content">
				<ul>
					<li><a>About</a></li>
					<li><a onclick="javascript:location.href='${root}/present/present.do'">회사소개</a></li>
					<li><a>인재 채용</a></li>
				</ul>
				<ul>
					<li><a>서비스 이용</a></li>
					<li><a>리디캐시 충전</a></li>
					<li><a>공지사항</a></li>
					<li><a>고객센터</a></li>
				</ul>
<!-- 				<ul> -->
<!-- 					<li><a>파트너십</a></li> -->
<!-- 					<li><a>콘텐츠 제공 문의</a></li> -->
<!-- 					<li><a>CP사이트</a></li> -->
<!-- 					<li><a>사업 제휴 문의</a></li> -->
<!-- 				</ul> -->
<!-- 				<ul> -->
<!-- 					<li><a>리디북스 소식</a></li> -->
<!-- 					<li><a>뉴스레터</a></li> -->
<!-- 					<li><a>페이스북</a></li> -->
<!-- 					<li><a>트위터</a></li> -->
<!-- 					<li><a>블로그</a></li> -->
<!-- 					<li><a>인스타그램</a></li> -->
<!-- 				</ul> -->
				<ul>
					<li class="footer_margin_right"><img></li>
					<li><div class="footer_end_content_text">
							<span>퍼스트브랜드 대상</span><br> <span>전자책 부분 3년연속</span>
						</div></li>
				</ul>
				<ul>
					<li class="footer_margin_right"><img></li>
					<li><div class="footer_end_content_text">
							<span>CLEAN SITE</span><br> <span>출판/만화 분야</span>
						</div></li>
				</ul>
			</div>
		</div>
		<!-- 		<div class="footer_end_content"> -->
		<!-- 			<div> -->
		<!-- 				<img /> -->
		<!-- 				<div class="footer_end_content_text"> -->
		<!-- 					<span>퍼스트브랜드 대상</span><br><span>전자책 부분 3년연속</span> -->
		<!-- 				</div> -->
		<!-- 			</div> -->
		<!-- 			<div> -->
		<!-- 				<img /> -->
		<!-- 				<div class="footer_end_content_text"> -->
		<!-- 					<span>CLEAN SITE</span><br><span>출판/만화 분야</span> -->
		<!-- 				</div> -->
		<!-- 			</div> -->
		<!-- 		</div> -->
	</div>
</body>
</html>