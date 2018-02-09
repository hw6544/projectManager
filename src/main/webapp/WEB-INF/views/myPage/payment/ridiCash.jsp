<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="root" value="${pageContext.request.contextPath}" />
<title>마이팩토리, 마이캐시</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="${root}/css/basic/reset.css" type="text/css" rel="stylesheet">
<link href="${root}/css/basic/commons.css" type="text/css" rel="stylesheet">
<link href="${root}/css/myPage/myRidi.css" type="text/css" rel="stylesheet">
<link href="${root}/css/myPage/home.css" type="text/css" rel="stylesheet">
<link href="${root}/css/myPage/library/purchasedAll.css" type="text/css" rel="stylesheet">
<link href="${root}/css/myPage/payment/ridicash.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div class="myridi-contents-page">
		<section class="wrap-container myridi-purchased-box">
			<!-- 타이틀 -->
			<div class="bf-title-row title-type4">
				<h3>마이캐시</h3>
			</div>
			<!-- 마이캐시 충전  -->
			<div class="bf-service-type-menu">
				<ul class="service-type-list">
					<li><a class="active" href="${root}/payment/ridiCash.do">마이캐시 충전</a></li>
					<li><a href="javascript:alert('자동충전 미구현')">자동충전</a></li>
					<li><a href="${root}/payment/ridiCashHistoryCash.do">충전 내역</a></li>
					<li><a href="javascript:alert('입금 대기 미구현')">입금 대기</a></li>
				</ul>
			</div>
			<!-- 충전 설명 -->
			<div class="cash_header">
				<div>
					<div>
						<h3 class="header_title">
							복잡한 결제를<br />마이캐시로 간편하게!
						</h3>
						<p class="sub_description">
							최대 9% 마이포인트 적립 혜택도 놓치지 마세요!<br />한 번 충전하면 결제 정보 입력 없이 쉽게 결제할 수 있는 마이캐시.
						</p>
					</div>
					<div class="cash_img">
						<img src="${root}/img/ridicashcharge.PNG">
					</div>
				</div>
				<p class="my_cash_amount">
					내 마이캐시 <span class="amount"> <span>2,000</span>원
					</span>
				</p>
			</div>

			<!-- 충전 금액 padding-top: 5px, padding-bottom: 25px-->
			<form name="cash_form" method="post" action="">
				<div class="wrapper">
					<div class="cash_select">
						<ul class="cash_select_ul">
							<li class="input_cell">마이캐시 충전</li>
							<li class="percentage_cell">적립률</li>
							<li class="point_cell">마이포인트 적립</li>
						</ul>
					</div>
					<div class="cash_body">
						<div class="select_input_wrapper_divide_firstbefore">
							<div class="select_body_1">
								<div class="input_cell">
									<span class="input_wrapper"><label><input type="radio" class="radio" name="radio" /> <span class="radio_mark"></span><span class="radio_span"> <span class="cash_charge">2,000</span>원
										</span></label> </span>
								</div>
								<div class="percentage_cell">
									<span class="percentage_wrapper"> <span class="point_percentage"> <span class="cash_saving">3</span>%
									</span>
									</span>
								</div>
								<div class="point_cell">
									<span class="point_wrapper"> <span class="point_percentage"> <span class="point_saving"> <span class="point_plus">+</span> <span class="radio_span">60</span>원
										</span>
									</span>
									</span>
								</div>
							</div>
						</div>
						<div class="select_input_wrapper_divide_after">
							<div class="select_body_1">
								<div class="input_cell">
									<span class="input_wrapper"><label><input type="radio" class="radio" name="radio" /> <span class="radio_mark"></span><span class="radio_span"> <span class="cash_charge">5,000</span>원
										</span></label> </span>
								</div>
								<div class="percentage_cell">
									<span class="percentage_wrapper"> <span class="point_percentage"> <span class="cash_saving">5</span>%
									</span>
									</span>
								</div>
								<div class="point_cell">
									<span class="point_wrapper"> <span class="point_percentage"> <span class="point_saving"> <span class="point_plus">+</span> <span class="radio_span">250</span>원
										</span>
									</span>
									</span>
								</div>
							</div>
						</div>
						<div class="select_input_wrapper">
							<div class="select_body_1">
								<div class="input_cell">
									<span class="input_wrapper"><label><input type="radio" class="radio" name="radio" /> <span class="radio_mark"></span><span class="radio_span"> <span class="cash_charge">10,000</span>원
										</span></label> </span>
								</div>
								<div class="percentage_cell">
									<span class="percentage_wrapper"> <span class="point_percentage"> <span class="cash_saving">5</span>%
									</span>
									</span>
								</div>
								<div class="point_cell">
									<span class="point_wrapper"> <span class="point_percentage"> <span class="point_saving"> <span class="point_plus">+</span> <span class="radio_span">500</span>원
										</span>
									</span>
									</span>
								</div>
							</div>
						</div>
						<div class="select_input_wrapper_divide_before">
							<div class="select_body_1">
								<div class="input_cell">
									<span class="input_wrapper"><label><input type="radio" class="radio" name="radio" /> <span class="radio_mark"></span><span class="radio_span"> <span class="cash_charge">20,000</span>원
										</span></label> </span>
								</div>
								<div class="percentage_cell">
									<span class="percentage_wrapper"> <span class="point_percentage"> <span class="cash_saving">5</span>%
									</span>
									</span>
								</div>
								<div class="point_cell">
									<span class="point_wrapper"> <span class="point_percentage"> <span class="point_saving"> <span class="point_plus">+</span> <span class="radio_span">1,000</span>원
										</span>
									</span>
									</span>
								</div>
							</div>
						</div>
						<div class="select_input_wrapper_divide_after">
							<div class="select_body_1">
								<div class="input_cell">
									<span class="input_wrapper"><label><input type="radio" class="radio" name="radio" /> <span class="radio_mark"></span><span class="radio_span"> <span class="cash_charge">30,000</span>원
										</span></label> </span>
								</div>
								<div class="percentage_cell">
									<span class="percentage_wrapper"> <span class="point_percentage"> <span class="cash_saving">7</span>%
									</span>
									</span>
								</div>
								<div class="point_cell">
									<span class="point_wrapper"> <span class="point_percentage"> <span class="point_saving"> <span class="point_plus">+</span> <span class="radio_span">2,100</span>원
										</span>
									</span>
									</span>
								</div>
							</div>
						</div>
						<div class="select_input_wrapper">
							<div class="select_body_1">
								<div class="input_cell">
									<span class="input_wrapper"><label><input type="radio" class="radio" name="radio" /> <span class="radio_mark"></span><span class="radio_span"> <span class="cash_charge">50,000</span>원
										</span></label> </span>
								</div>
								<div class="percentage_cell">
									<span class="percentage_wrapper"> <span class="point_percentage"> <span class="cash_saving">7</span>%
									</span>
									</span>
								</div>
								<div class="point_cell">
									<span class="point_wrapper"> <span class="point_percentage"> <span class="point_saving"> <span class="point_plus">+</span> <span class="radio_span">3,500</span>원
										</span>
									</span>
									</span>
								</div>
							</div>
						</div>
						<div class="select_input_wrapper_divide_before">
							<div class="select_body_1">
								<div class="input_cell">
									<span class="input_wrapper"><label><input type="radio" class="radio" name="radio" /><span class="radio_mark"></span><span class="radio_span"> <span class="cash_charge">70,000</span>원
										</span></label> </span>
								</div>
								<div class="percentage_cell">
									<span class="percentage_wrapper"> <span class="point_percentage"> <span class="cash_saving">7</span>%
									</span>
									</span>
								</div>
								<div class="point_cell">
									<span class="point_wrapper"> <span class="point_percentage"> <span class="point_saving"> <span class="point_plus">+</span> <span class="radio_span">4,900</span>원
										</span>
									</span>
									</span>
								</div>
							</div>
						</div>
						<div class="select_input_wrapper_divide_after">
							<div class="select_body_1">
								<div class="input_cell">
									<span class="input_wrapper"><label><input type="radio" class="radio" name="radio" /> <span class="radio_mark"></span><span class="radio_span"> <span class="cash_charge">100,000</span>원
										</span></label> </span>
								</div>
								<div class="percentage_cell">
									<span class="percentage_wrapper"> <span class="point_percentage"> <span class="cash_saving">9</span>%
									</span>
									</span>
								</div>
								<div class="point_cell">
									<span class="point_wrapper"> <span class="point_percentage"> <span class="point_saving"> <span class="point_plus">+</span> <span class="radio_span">9,000</span>원
										</span>
									</span>
									</span>
								</div>
							</div>
						</div>
						<div class="select_input_wrapper">
							<div class="select_body_1">
								<div class="input_cell">
									<span class="input_wrapper"><label><input type="radio" class="radio" name="radio" /> <span class="radio_mark"></span><span class="radio_span"> <span class="cash_charge">200,000</span>원
										</span></label> </span>
								</div>
								<div class="percentage_cell">
									<span class="percentage_wrapper"> <span class="point_percentage"> <span class="cash_saving">9</span>%
									</span>
									</span>
								</div>
								<div class="point_cell">
									<span class="point_wrapper"> <span class="point_percentage"> <span class="point_saving"> <span class="point_plus">+</span> <span class="radio_span">18,000</span>원
										</span>
									</span>
									</span>
								</div>
							</div>
						</div>
						<div class="select_input_wrapper">
							<div class="select_body_1">
								<div class="input_cell">
									<span class="input_wrapper"><label><input type="radio" class="radio" name="radio" /> <span class="radio_mark"></span><span class="radio_span"> <span class="cash_charge">300,000</span>원
										</span></label> </span>
								</div>
								<div class="percentage_cell">
									<span class="percentage_wrapper"> <span class="point_percentage"> <span class="cash_saving">9</span>%
									</span>
									</span>
								</div>
								<div class="point_cell">
									<span class="point_wrapper"> <span class="point_percentage"> <span class="point_saving"> <span class="point_plus">+</span> <span class="radio_span">27,000</span>원
										</span>
									</span>
									</span>
								</div>
							</div>
						</div>
						<div class="select_input_wrapper">
							<div class="select_body_1">
								<div class="input_cell">
									<span class="input_wrapper"><label><input type="radio" class="radio" name="radio" /> <span class="radio_mark"></span><span class="radio_span"> <span class="cash_charge">400,000</span>원
										</span></label> </span>
								</div>
								<div class="percentage_cell">
									<span class="percentage_wrapper"> <span class="point_percentage"> <span class="cash_saving">9</span>%
									</span>
									</span>
								</div>
								<div class="point_cell">
									<span class="point_wrapper"> <span class="point_percentage"> <span class="point_saving"> <span class="point_plus">+</span> <span class="radio_span">36,000</span>원
										</span>
									</span>
									</span>
								</div>
							</div>
						</div>
						<div class="select_input_wrapper">
							<div class="select_body_1">
								<div class="input_cell">
									<span class="input_wrapper"><label><input type="radio" class="radio" name="radio" /> <span class="radio_mark"></span><span class="radio_span"> <span class="cash_charge">500,000</span>원
										</span></label> </span>
								</div>
								<div class="percentage_cell">
									<span class="percentage_wrapper"> <span class="point_percentage"> <span class="cash_saving">9</span>%
									</span>
									</span>
								</div>
								<div class="point_cell">
									<span class="point_wrapper"> <span class="point_percentage"> <span class="point_saving"> <span class="point_plus">+</span> <span class="radio_span">45,000</span>원
										</span>
									</span>
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="payment_select_wrapper">
					<div class="table_wrapper">
						<div class="title_wrapper">
							<h4 class="title">결제 수단 선택</h4>
						</div>
					</div>
					<div class="payment_list_wrapper">
						<ul class="list_wrapper">
							<li class="payment_list"><label><input type="radio" class="radio_input" name="radio_input" /><span class="radio_mark"></span><span class="payment_label"> <span class="payment_pay">네이버페이</span>
								</span><img src="${root}/img/ridicash/네이버페이.PNG"></label></li>
							<li class="payment_list"><label><input type="radio" class="radio_input" name="radio_input" /><span class="radio_mark"></span><span class="payment_label"> <span class="payment_pay">카카오페이</span>
								</span><img src="${root}/img/ridicash/카카오페이.PNG"></label></li>
							<li class="payment_list"><label><input type="radio" class="radio_input" name="radio_input" /><span class="radio_mark"></span><span class="payment_label"> <span class="payment_pay">삼성페이</span>
								</span><img src="${root}/img/ridicash/삼성페이.PNG"></label></li>
							<li class="payment_list"><label><input type="radio" class="radio_input" name="radio_input" /><span class="radio_mark"></span><span class="payment_label"> <span class="payment_pay">페이코</span>
								</span><img src="${root}/img/ridicash/페이코.PNG"></label></li>
							<li class="payment_list"><label><input type="radio" class="radio_input" name="radio_input" /><span class="radio_mark"></span><span class="payment_label"> <span class="payment_pay">페이나우</span>
								</span><img src="${root}/img/ridicash/페이나우.PNG"></label></li>
							<li class="payment_list"><label><input type="radio" class="radio_input" name="radio_input" /><span class="radio_mark"></span><span class="payment_label"> <span>신용카드</span>
								</span></label></li>
							<li class="payment_list"><label><input type="radio" class="radio_input" name="radio_input" /><span class="radio_mark"></span><span class="payment_label"> <span>휴대폰</span>
								</span></label></li>
							<li class="payment_list"><label><input type="radio" class="radio_input" name="radio_input" /><span class="radio_mark"></span><span class="payment_label"> <span>유선전화</span>
								</span></label></li>
							<li class="payment_list"><label><input type="radio" class="radio_input" name="radio_input" /><span class="radio_mark"></span><span class="payment_label"> <span>계좌이체</span>
								</span></label></li>
							<li class="payment_list"><label><input type="radio" class="radio_input" name="radio_input" /><span class="radio_mark"></span><span class="payment_label"> <span>컬쳐랜드문화상품권</span>
								</span></label></li>
							<li class="payment_list"><label><input type="radio" class="radio_input" name="radio_input" /><span class="radio_mark"></span><span class="payment_label"> <span>도서문화상품권</span>
								</span></label></li>
							<li class="payment_list"><label><input type="radio" class="radio_input" name="radio_input" /><span class="radio_mark"></span><span class="payment_label"> <span>해피머니(모바일팝)</span>
								</span></label></li>
							<li class="payment_list"><label><input type="radio" class="radio_input" name="radio_input" /><span class="radio_mark"></span><span class="payment_label"> <span>해외 발행 신용카드</span>
								</span></label></li>
							<li class="payment_list"><label><input type="radio" class="radio_input" name="radio_input" /><span class="radio_mark"></span><span class="payment_label"> <span>무통장입금</span>
								</span></label></li>
						</ul>
					</div>
				</div>
				<div class="checkout_agreement_wrapper">
					<div class="agreement_checkbox">
						<label class="bf-custom-checkbox"> <input type="checkbox" title="구매목록 책 전체선택" /> <span class="all-mark"></span>
						</label><span class="agreement_checkbox_message">상품,가격,할인 정보, 유의 사항 등을 확인하였으며 구매에 동의합니다.</span>
					</div>
				</div>
				<div class="checkout_button_wrap">
					<button type="button" class="bf-button" style="width: 210px">
						<span class="coin_icons"></span>마이캐시 충전
					</button>
				</div>
				<ul class="caution_wrapper">
					<li class="warning">매월 1~3일에는 마이캐시 충전 시 적립되는 마이포인트가 두배!</li>
					<li class="warning">결제 취소는 결제 후 7일 이내에만 할 수 있습니다. 단, 마이캐시 또는 적립된 마이포인트의 일부를 사용하면 결제 취소할 수 없습니다.</li>
					<li class="warning">마이캐시는 마지막 이용일로부터 5년 경과 시까지 이용 내역이 없을 경우, <상법 제64조 상사채권 소멸시효> 조항에 따라 소멸됩니다.</li>
					<li class="warning">일부를 사용한 마이캐시는 환불받을 수 있으며 충전 시 무료로 지급받은 마이포인트 및 환불 수수로(10%)를 공제하고 남은 금액을 환불해드립니다. (단, 네이버페이/컬쳐랜드문화상품권/도서문화상품권/해피머니(모바일팝)상품권으로 결제한 경우 환불받을 수 없습니다.)</li>
				</ul>
			</form>
		</section>
	</div>

	<script type="text/javascript" src="${root}/jquery/jquery.js"></script>
	<script type="text/javascript">
		var radio = $(".select_body_1");

		radio.find("input[type=radio]").click(function(e) {
			if (this.checked) {
				this.checked = true;
			}
		});

		// $("select_body_1")클릭시, <-의 자식의 자식의 자식인 타입:라디오 체크
	</script>

</body>
</html>