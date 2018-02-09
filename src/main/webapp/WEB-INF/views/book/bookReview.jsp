<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Book Review</title>
<c:set var="root" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link href="${root}/css/basic/reset.css" type="text/css" rel="stylesheet">
<link href="${root}/css/basic/commons.css" type="text/css" rel="stylesheet">
<link href="${root}/css/book/bookReview.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div class="wrap-container" style="width:56.25rem; padding: 0 2rem;">
		<div class="bf-title-row title-type2">
			<h2>리뷰</h2>
		</div>
		<!-- 리뷰 작성 -->
		<section class="bf-review-box">
			<!-- 구매자 별점 -->
			<div class="buyer-score-info">
				<h4 class="title">구매자 별점</h4>
				<span class="score">4.6</span>
				<div class="content-star-rate">
					<span class="star-icon-field material-icons"></span><span class="non-star-icon-field material-icons"></span>
				</div>
				<ul class="score-graph">
					<li><span class="material-icons">star</span>5
						<div class="score-bar-container">
							<div class="score-bar"></div>
						</div></li>
					<li><span class="material-icons">star</span>4
						<div class="score-bar-container">
							<div class="score-bar"></div>
						</div></li>
					<li><span class="material-icons">star</span>3
						<div class="score-bar-container">
							<div class="score-bar"></div>
						</div></li>
					<li><span class="material-icons">star</span>2
						<div class="score-bar-container">
							<div class="score-bar"></div>
						</div></li>
					<li><span class="material-icons">star</span>1
						<div class="score-bar-container">
							<div class="score-bar"></div>
						</div></li>
				</ul>
				<span class="score-rater-num">5명이 평가함</span>
			</div>
			<!-- 리뷰 작성 -->
			<div class="review-write-box">
				<h4 class="hidden-block"></h4>
				<!-- 별점 평가 -->
				<div class="star-rate-box">
					<span>이 책을 평가해주세요!</span>
					<div id="star-rate-touch-box">
						<label class="star-field">
							<span class="star-icon material-icons">star</span>
							<span class="star-rate-tip">별로에요</span>
							<span class="star-field">
								<span class="star-icon material-icons">star</span>
								<span class="star-rate-tip">그저그래요</span>
								<span class="star-field">
									<span class="star-icon material-icons">star</span>
									<span class="star-rate-tip">보통이에요</span>
									<span class="star-field">
										<span class="star-icon material-icons">star</span>
										<span class="star-rate-tip">좋아요</span>
										<span class="star-field">
											<span class="star-icon last material-icons">star</span>
											<span class="star-rate-tip">최고에요</span>
										</span>
									</span>
								</span>
							</span>
						</label>
					</div>
				</div>
				<!-- 리뷰 작성 폼 -->
				<form>
					<div class="review-write-form">
						<textarea id="review-textarea" name="review" placeholder="리뷰 작성 시 광고 및 욕설, 비속어나 타인을 비방하는 문구를 사용하시면 비공개 될 수 있습니다."></textarea>
					</div>
				</form>
				<div class="review-write-submit">					
					<button type="button" class="bf-button disabled" id="review-submit-btn">리뷰 남기기</button>
					<label class="bf-custom-checkbox">
						<input type="checkbox" title="구매목록 책 전체선택" />
						<span class="all-mark"></span>
						<span class="checkbox-label">스포일러가 있습니다.</span>
					</label>
					<button type="button" class="bf-button bf-notice-btn bf-white-btn" value="false" onclick="collapseViewToggle(this)">
						<span class="material-icons">warning</span>
						리뷰작성 유의사항
					</button>
					<div class="collapsable-notice" style="display:none;">
						<p>건전한 리뷰 정착 및 양질의 리뷰를 위해 아래 해당하는 리뷰는 비공개 조치될 수 있음을 안내드립니다.<br /><br /></p>
						<ol style="list-style:decimal;">
							<li>타인에게 불쾌감을 주는 욕설</li>
							<li>비속어나 타인을 비방하는 내용</li>
							<li>특정 종교, 민족, 계층을 비방하는 내용</li>
							<li>해당 도서의 줄거리나 리디북스 서비스 이용과 관련이 없는 내용</li>
							<li>의미를 알 수 없는 내용</li>
							<li>광고 및 반복적인 글을 게시하여 서비스 품질을 떨어트리는 내용</li>
							<li>저작권상 문제의 소지가 있는 내용</li>
							<li>다른 리뷰에 대한 반박이나 논쟁을 유발하는 내용</li>
						</ol>
						<p><br />* 결말을 예상할 수 있는 리뷰는 자제하여 주시기 바랍니다.<br />이 외에도 건전한 리뷰 문화 형성을 위한 운영 목적과 취지에 맞지 않는 내용은 담당자에 의해 리뷰가 비공개 처리가 될 수 있습니다.</p>
					</div>
				</div>
			</div><!-- End : review-write-box -->
		</section><!-- End : bf-review-box -->
		<!-- 리뷰 목록 & 댓글 작성 -->
		<section class="bf-review-box">
			<!-- 리뷰 목록 -->
			<div class="bf-service-type-menu line-bottom">
				<!-- 서비스타입 메뉴  -->
				<ul class="service-type-list f-left">
					<li><a class="active" href="javascript:alert('구매자')">구매자<span class="book-count">3</span></a></li>
					<li><a href="javascript:alert('전체')">전체<span class="book-count">5</span></a></li>
				</ul>
				<!-- 정렬기준 메뉴 -->
				<ul class="order-type-list f-right">
					<li class="diamond"><a class="active" href="#">최신순</a></li>
					<li class="diamond"><a href="#">공감순</a></li>
					<li class="diamond"><a href="#">별점높은순</a></li>
					<li><a href="#">별점낮은순</a></li>
				</ul>
			</div><!-- End : bf-service-type-menu -->
			<ul class="review-list-box" id="review-list-box-id">
				<!-- 리뷰글 -->
				<li class="review-list-item">
					<!-- 리뷰 정보 -->
					<div class="review-info">
						<div class="content-star-rate review-info-row">
							<span class="star-icon-field material-icons"></span><span class="non-star-icon-field material-icons"></span>
						</div>
						<div class="review-info-row">
							<span class="reviewer-id">nb***</span>
							<span class="badge-icon">구매자</span>
						</div>
						<div class="review-info-row">
							<span class="review-date">2018.01.21</span>
							<button type="button" class="bf-button bf-white-btn">신고</button>
						</div>
					</div>
					<!-- 리뷰 내용 -->
					<div class="review-contents">
						<div class="review-content review-spoiler" style="display:inline-block;">
							<span><span class="material-icons">warning</span> 스포일러가 있는 리뷰입니다.</span>
							<hr class="line">
							<button type="button" class="bf-button bf-transparent-btn bf-animated-btn" onclick="collapseSpoilerView(this)">리뷰보기</button>
						</div>
						<p class="review-content" style="display:none;">구석구석 공감할만한 좋은 글귀가 있긴 했지만 뻔한 주입식 자기계발서의 특징을 그대로 가지고 있습니다. 사실 제목도 맘에 들지 않았는데 하도 오랫동안 상위권에 있길래 어느날 홀리듯이 구매해서 읽었으나 역시 좀 후회했습니다.</p>
						<!-- 리뷰 평가 버튼 -->
						<div class="review-status">
							<button type="button" class="bf-button bf-white-btn">
								<span class="material-icons">thumb_up</span>
								<span class="book-count">20</span>
							</button>
							<button type="button" class="bf-button bf-white-btn" onclick="collapseViewToggle(this)">
								<span class="material-icons">textsms</span>
								댓글
								<span class="book-count">2</span>
							</button>
							<!-- 댓글 컨트롤 -->
							<div class="reply-write-form" style="display:none;">
								<!-- 댓글 목록 -->
								<div class="reply-list-box">
									<ul>
										<li>
											<p class="reply-content" style="display:inline-block;">작가는 불교,동양철학에 심취해있다. 제목보고 낚였다. 제목은 가볍지만 내용은 그렇지 않다. 그리고 너무 본인의 생각을 강요 또는 일반화 시기키지 않나 생각이 든다. 마지막은 갑자기 무슨 소설 끝나는 장면 같다. 개인적으로 불교의 사상을 좋아하기 때문에 그냥 좋은글 한편 잘 읽은 가분이다</p>
											<p class="reply-info">dud***  2017.12.10 19:17</p>
										</li>
										<li>
											<p class="reply-content" style="display:inline-block;">좋은 리뷰 잘봤습니다~</p>
											<p class="reply-info">nb***  2017.12.15 20:17</p>
										</li>
									</ul>
								</div>
								<!-- 댓글 작성 -->
								<form>
									<textarea id="reply-textarea" name="reply"></textarea>
									<button type="button" class="bf-button">댓글 달기</button>
								</form>
							</div>
						</div>
					</div>					
				</li><!--  End : review-list-item -->
				<!-- 리뷰글 -->
				<li class="review-list-item">
					<!-- 리뷰 정보 -->
					<div class="review-info">
						<div class="content-star-rate review-info-row">
							<span class="star-icon-field material-icons"></span><span class="non-star-icon-field material-icons"></span>
						</div>
						<div class="review-info-row">
							<span class="reviewer-id">nb***</span>
							<span class="badge-icon">구매자</span>
						</div>
						<div class="review-info-row">
							<span class="review-date">2018.01.21</span>
							<button type="button" class="bf-button bf-white-btn">신고</button>
						</div>
					</div>
					<!-- 리뷰 내용 -->
					<div class="review-contents">
						<div class="review-content review-spoiler" style="display:inline-block;">
							<span><span class="material-icons">warning</span> 스포일러가 있는 리뷰입니다.</span>
							<hr class="line">
							<button type="button" class="bf-button bf-transparent-btn bf-animated-btn" onclick="collapseSpoilerView(this)">리뷰보기</button>
						</div>
						<p class="review-content" style="display:none;">맨 마지막 장만...읽어도 될듯하네요</p>
						<!-- 리뷰 평가 버튼 -->
						<div class="review-status">
							<button type="button" class="bf-button bf-white-btn">
								<span class="material-icons">thumb_up</span>
								<span class="book-count">2</span>
							</button>
							<button type="button" class="bf-button bf-white-btn" onclick="collapseViewToggle(this)">
								<span class="material-icons">textsms</span>
								댓글
								<span class="book-count"></span>
							</button>
							<!-- 댓글 컨트롤 -->
							<div class="reply-write-form" style="display:none;">
								<!-- 댓글 목록 -->
								<div class="reply-list-box">
									<ul></ul>
								</div>
								<!-- 댓글 작성 -->
								<form>
									<textarea id="reply-textarea" name="reply"></textarea>
									<button type="button" class="bf-button">댓글 달기</button>
								</form>
							</div>
						</div>
					</div>					
				</li><!--  End : review-list-item -->
				<!-- 리뷰글 -->
				<li class="review-list-item">
					<!-- 리뷰 정보 -->
					<div class="review-info">
						<div class="content-star-rate review-info-row">
							<span class="star-icon-field material-icons"></span><span class="non-star-icon-field material-icons"></span>
						</div>
						<div class="review-info-row">
							<span class="reviewer-id">nb***</span>
							<span class="badge-icon">구매자</span>
						</div>
						<div class="review-info-row">
							<span class="review-date">2018.01.21</span>
							<button type="button" class="bf-button bf-white-btn">신고</button>
						</div>
					</div>
					<!-- 리뷰 내용 -->
					<div class="review-contents">
						<div class="review-content review-spoiler" style="display:none;">
							<span><span class="material-icons">warning</span> 스포일러가 있는 리뷰입니다.</span>
							<hr class="line">
							<button type="button" class="bf-button bf-transparent-btn bf-animated-btn" onclick="collapseSpoilerView(this)">리뷰보기</button>
						</div>
						<p class="review-content" style="display:inline-block;">작가는 불교,동양철학에 심취해있다. 제목보고 낚였다. 제목은 가볍지만 내용은 그렇지 않다. 그리고 너무 본인의 생각을 강요 또는 일반화 시기키지 않나 생각이 든다. 마지막은 갑자기 무슨 소설 끝나는 장면 같다. 개인적으로 불교의 사상을 좋아하기 때문에 그냥 좋은글 한편 잘 읽은 가분이다</p>
						<!-- 리뷰 평가 버튼 -->
						<div class="review-status">
							<button type="button" class="bf-button bf-white-btn">
								<span class="material-icons">thumb_up</span>
								<span class="book-count">1</span>
							</button>
							<button type="button" class="bf-button bf-white-btn" onclick="collapseViewToggle(this)">
								<span class="material-icons">textsms</span>
								댓글
								<span class="book-count">1</span>
							</button>
							<!-- 댓글 컨트롤 -->
							<div class="reply-write-form" style="display:none;">
								<!-- 댓글 목록 -->
								<div class="reply-list-box">
									<ul>
										<li>
											<p class="reply-content" style="display:inline-block;">작가는 불교,동양철학에 심취해있다. 제목보고 낚였다. 제목은 가볍지만 내용은 그렇지 않다. 그리고 너무 본인의 생각을 강요 또는 일반화 시기키지 않나 생각이 든다. 마지막은 갑자기 무슨 소설 끝나는 장면 같다. 개인적으로 불교의 사상을 좋아하기 때문에 그냥 좋은글 한편 잘 읽은 가분이다</p>
											<p class="reply-info">dud***  2017.12.10 19:17</p>
										</li>
									</ul>
								</div>
								<!-- 댓글 작성 -->
								<form>
									<textarea id="reply-textarea" name="reply"></textarea>
									<button type="button" class="bf-button">댓글 달기</button>
								</form>
							</div>
						</div>
					</div>					
				</li><!--  End : review-list-item -->
			</ul><!-- End : review-list-box -->
			<div class="review-more-button">
				<button type="button" class="bf-button bf-white-btn"><span class="more-count">10</span> 개 더보기</button>
			</div>
			<hr class="line block">
			<button type="button" class="bf-button bf-notice-btn bf-transparent-btn bf-animated-btn" value="false" onclick="collapseViewToggle(this)">
				리뷰작성 유의사항
			</button>
			<div class="collapsable-notice" style="display: none;">
				<p>‘구매자’ 표시는 유료 도서를 결제하고 다운로드 하신 경우에만 표시됩니다.<br /><br /></p>
				<ol style="list-style: decimal;">
					<li>무료 도서 (프로모션 등으로 무료로 전환된 도서 포함)<br />'구매자'로 표시되지 않습니다.<br /></li>
					<li>시리즈 도서 내 무료도서<br />'구매자’로 표시되지 않습니다. 하지만 같은 시리즈의 유료 도서를 결제한 뒤 리뷰를 수정하거나 재등록하면 '구매자'로 표시됩니다.<br /></li>
					<li>영구 삭제<br />도서를 영구 삭제해도 ‘구매자’ 표시는 남아있습니다.<br /></li>
					<li>결제 취소<br />‘구매자’ 표시가 자동으로 사라집니다.<br /></li>
				</ol>
			</div>
		</section><!-- End : bf-review-box -->
		<button type="button" class="bf-button" onclick="appendReviewList(15)">고</button>
	</div>

	<%-- 자바 스크립트 --%>
	<script type="text/javascript" src="${root}/script/basic/commons.js"></script>
	<script type="text/javascript" src="${root}/script/book/bookReview.js"></script>
	<script type="text/javascript">
		document.querySelectorAll(".content-star-rate").forEach(function(item, index) {
			createStarIcon(item, 3.7);
		});
		
		document.getElementById("review-textarea").onkeyup = function() {
			// Validate length
			var button = document.getElementById("review-submit-btn");
			if (this.value.length >= 12) {
				button.classList.remove("disabled");
			} else {
				button.classList.add("disabled");
			}
		}
	</script>
</body>
</html>