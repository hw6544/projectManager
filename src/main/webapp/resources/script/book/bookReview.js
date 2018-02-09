/**
 * 책 상세페이지 - 리뷰, 댓글용 자바스크립트 파일
 * 
 * @author 박성호(최초작성)
 * @date 2018.01.23
 */

/**
 * 리뷰글의 스포일러 영역을 없애고, 글 영역을 보이게 하는 함수  
 * @param active 이벤트가 발생한 버튼 요소
 * @returns 없음
 *
 * @author 박성호
 * @date 2018. 1. 23.
 */
function collapseSpoilerView(active) {
	var target = active.parentElement;
	if (target.style.display != "none") {
		target.style.display = "none";
		target.nextElementSibling.style.display = "inline-block";
	}
}

/**
 * 리뷰목록 개수를 확장하는 함수.(리뷰 목록은 한번에 10개씩만 출력하기 때문) 
 * @param remain 남아있는 리뷰글 개수(전체 리뷰 개수 - 출력된 리뷰 개수)
 * @param count 출력할 리뷰목록 개수(default = 10)
 * @returns 없음
 *
 * @author 박성호
 * @date 2018. 1. 23.
 */
function appendReviewList(remain, count) {
	// AJAX(리뷰 데이터 로드)

	// Create HTML Elements(document에 추가할 리뷰 요소 생성)
	var dFrag = document.createDocumentFragment();

	if (remain > count) {
		remain -= count;
	} else {
		count = remain;
		remain = 0;
	}

	for (let i = 0; i < count; i++) {
		// documentFragment에 리뷰(list-item) 요소 추가 및 데이터 삽입
		insertReviewData(addReviewItem(dFrag));
	}

	document.getElementById("review-list-box-id").appendChild(dFrag);
}

/**
 * documentFragment에 리뷰글 요소(li element)를 하나 생성해서 추가함
 * @param dFrag documentFragment
 * @returns documentFragment
 *
 * @author 박성호
 * @date 2018. 1. 23.
 */
function addReviewItem(dFrag) {
	var listItem = document.createElement("li");
	var innerHTML = '<!-- 리뷰 정보 --> <div class="review-info"> <div class="content-star-rate review-info-row"> <span class="star-icon-field material-icons"></span><span class="non-star-icon-field material-icons"></span> </div> <div class="review-info-row"> <span class="reviewer-id">admin***</span> <span class="badge-icon">구매자</span> </div> <div class="review-info-row"> <span class="review-date">2018.01.01</span> <button type="button" class="bf-button bf-white-btn">신고</button> </div> </div> <!-- 리뷰 내용 --> <div class="review-contents"> <div class="review-content review-spoiler" style="display:none;"> <span><span class="material-icons">warning</span> 스포일러가 있는 리뷰입니다.</span> <hr class="line"> <button type="button" class="bf-button bf-transparent-btn bf-animated-btn" onclick="collapseSpoilerView(this)">리뷰보기</button> </div> <p class="review-content" style="display:inline-block;">리뷰내용</p> <!-- 리뷰 평가 버튼 --> <div class="review-status"> <button type="button" class="bf-button bf-white-btn"> <span class="material-icons">thumb_up</span> <span class="book-count"></span> </button> <button type="button" class="bf-button bf-white-btn" onclick="collapseViewToggle(this)"> <span class="material-icons">textsms</span> 댓글 <span class="book-count"></span> </button> <!-- 댓글 컨트롤 --> <div class="reply-write-form" style="display:none;"> <!-- 댓글 목록 --> <div class="reply-list-box"> <ul></ul> </div> <!-- 댓글 작성 --> <form> <textarea id="reply-textarea" name="reply"></textarea> <button type="button" class="bf-button">댓글 달기</button> </form> </div> </div> </div>';

	listItem.className = "review-list-item";
	listItem.innerHTML = innerHTML;

	return dFrag.appendChild(listItem);
}

function insertReviewData(listItem) {
	// TODO: insert data

}