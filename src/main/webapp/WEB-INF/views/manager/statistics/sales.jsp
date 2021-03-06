<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
    <c:set var="root" value="${pageContext.request.contextPath}"/>
    <link rel="stylesheet" href="${root}/css/basic/bootstrap.css">
    <link rel="stylesheet" href="${root}/css/basic/reset.css">
  	<link rel="stylesheet" href="${root}/css/basic/commons.css">
  	<link rel="stylesheet" href="${root}/css/basic/jquery-ui.css">
  	<link rel="stylesheet" href="${root}/css/manager/preference.css">
</head>
<body>
<div id="s_tt_wrapper">
		<section class="s_tt_main">
			<div class="s_tt_header"><h2>매출</h2></div>
			<div class="s_tt_content">
				<div class="bf-service-type-menu">
					<ul class="service-type-list s_t_cate">
						<li><a class="active" href="javascript:alert('전체')">전체</a></li>
						<li><a href="javascript:alert('일반')">일반</a></li>
						<li><a href="javascript:alert('로맨스')">로맨스</a></li>
						<li><a href="javascript:alert('판타지')">판타지</a></li>
						<li><a href="javascript:alert('만화')">만화</a></li>
						<li><a href="javascript:alert('BL')">BL</a></li>
					</ul>
					<ul class="service-type-list s_t_cate">
						<li><a class="active" href="javascript:alert('일주일')">일주일</a></li>
						<li><a href="javascript:alert('1개월')">1개월</a></li>
						<li><a href="javascript:alert('3개월')">3개월</a></li>
						<li><a href="javascript:alert('6개월')">6개월</a></li>
						<li><a href="javascript:alert('1년')">1년</a></li>
					</ul>
				</div>
				<h3>매출 그래프</h3>
    			<div id="s_tt_chart"></div>
    			<div id="s_tt_charWrap">
    				<h3>매출 비율</h3>
		    		<div id="s_tt_donutChart"></div>
		    		<div id="s_tt_progress">
		    			<div class="s_myProgress">
		    				<div id="generBar"></div>
		    				<span></span>
		    			</div>
		    			<div class="s_myProgress"><div id="romanBar"></div><span></span></div>
		    			<div class="s_myProgress"><div id="fantaBar"></div><span></span></div>
		    			<div class="s_myProgress"><div id="manhawBar"></div><span></span></div>
		    			<div class="s_myProgress"><div id="BLBar"></div><span></span></div>
		    		</div>
    			</div>
    			<div id="s_pr_info">
					<h3>매출 상세표</h3>
					<table class="table table-striped">
						<tr>
							<th><strong>카테고리</strong></th>
							<th>1일</th>
							<th>2일</th>
							<th>3일</th>
							<th>4일</th>
							<th>5일</th>	
							<th>6일</th>
							<th>7일</th>
						</tr>
					</table>
				</div>
    		</div>
    		
		</section>
	</div>
    
    <!-- Script -->
    <script src="${root}/script/basic/jquery.js"></script>
    <script src="${root}/script/basic/jquery-ui.js"></script>
    <script src="${root}/script/manager/jquery.flot.js"></script>
	<script src="${root}/script/manager/morris/morris.js"></script>
	<script src="${root}/script/manager/morris/raphael.min.js"></script>
	<script src="${root}/script/manager/sales.js"></script>
	<script src="${root}/script/basic/bootstrap.js"></script>
	
</body>
</html>