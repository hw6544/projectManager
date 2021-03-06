<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
	<c:set var="root" value="${pageContext.request.contextPath}"/>
  	<link rel="stylesheet" href="${root}/css/basic/reset.css">
  	<link rel="stylesheet" href="${root}/css/basic/commons.css">
  	<link rel="stylesheet" href="${root}/css/manager/book.css">
  	<link rel="stylesheet" href="${root}/css/manager/author.css">
  	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
	<div id="b_se_wrapper">
		<section class="b_se_main">
			<div class="b_se_header"><h2>작가 검색</h2></div>
			<div class="b_se_content">
				<div class="bf-service-type-menu b_se_tt">
					<!-- 서비스타입 메뉴  -->			
					<ul class="service-type-list a_se_bar">
						<li><span>이름</span></li>
						<li><span>출판책개수</span></li>
						<li><span>경력</span></li>
						<li><span>최근수상내역</span></li>
					</ul>
					<!-- 검색박스  -->
					<div class="search-box b_se_ta">
						<form method="get">
							<span class="material-icons">search</span>
							<input class="search-word" type="text" name="search-word" placeholder="책 제목 또는 저자명" />
						</form>
					</div>
				</div>
				<div class="a_se_list">
					<ul>
						<c:forEach begin="1" end="10">
							<li>
								<span>염현우</span>
								<span>10권</span>
								<span>쌍용교육수료</span>
								<span>베스트후보상</span>
								<span class="a_se_btn">
									<button type="button" class="bf-button" onclick="goUpdate('${root}/manager/authorInsert.do')">수정</button>
									<button type="button" class="bf-button" onclick="alert('삭제')">삭제</button>
								</span>
							</li>
						</c:forEach>
					</ul>
				</div>
				
			</div>
			<div class="a_se_foot">
				<nav class="bf-pagination">
					<ul class="bf-animated-btn">
						<li class="first"><a href="#0"><span></span></a></li>
						<li class="prev"><a href="#0"><span></span></a></li>
						<li><a href="#0">1</a></li>
						<li><a href="#0">2</a></li>
						<li><a class="active" href="#0">3</a></li>
						<li><a href="#0">4</a></li>
						<li><a href="#0">5</a></li>
						<li class="next"><a href="#0"><span></span></a></li>
						<li class="last"><a href="#0"><span></span></a></li>
					</ul>
				</nav>
			</div>
		</section>
	</div>
	
	<script type="text/javascript" src="${root}/script/basic/jquery.js"></script>
	<script type="text/javascript" src="${root}/script/basic/commons.js"></script>
	<script type="text/javascript">
		function goUpdate(url){
			location.href=url;
		}
	</script>
</body>
</html>
