/*
alert("성공");
 */


/* 헤더 템플릿 */
$(function() {

	/* 스크롤바 상단 고정 시작 */
	$(document).ready(function() {
		let hmOffset = $('#header_MainUl').offset();
		//#header_MainUl 의 위치를 파악합니다.

		$(window).scroll(function() {
			if ($(document).scrollTop() > hmOffset.top) { 
				// 스크롤바 위치가 문서의 수직 위치보다 아래라면
				$('#header_GNB').addClass('header_Fixed');
				//header_Fixed 라는 클래스를 추가해줍니다. 해당 클래스 속성을 CSS에 설정해줍니다.
			} else {
				$('#header_GNB').removeClass('header_Fixed');
				//그렇지 않으면 header_Fixed 클래스를 지웁니다.
			}
		});
	});
	/* 스크롤바 상단 고정 끝 */

	/* 회원정보 누르면 모달레이어 팝업 구현 시작 */
	$('#header_MemberIcon').click(function() {
		
		$('.screen').fadeIn();
		$("html, body").addClass("not_scroll");
		$('#header_Login').css('display','block');
		$('#topBtn').css('display','none');
	});
	
	$('.screen').click(function() {
		$('.screen').fadeOut();
		$("html, body").removeClass("not_scroll");
		$('#header_Login').css('display','none');
		$('#topBtn').css('display','block');
	});
	/* 회원정보 누르면 모달레이어 팝업 구현 끝 */
	
	/* 버튼 누르면 상단으로 이동 시작 */
	$('#topBtn').click(function(){
		$('html, body').stop().animate({scrollTop: 0}, 1);
	});
	/* 버튼 누르면 상단으로 이동 끝  */
	
	/* 회원가입 버튼 눌러서 페이지 이동 시작 */
	$("#joinBtn").click(function(){
		location.href = "/member/join.jsp";
	});
	/* 회원가입 버튼 눌러서 페이지 이동 끝 */
	/* 로그인 버튼 눌러서 페이지 이동 시작 */
	$("#loginBtn").click(function(){
		location.href = "/member/login.jsp";
	});
	/* 로그인 버튼 눌러서 페이지 이동 끝 */
	
	
});
/* 헤더 템플릿 끝*/
/*//////////////////////////////////////////////////////////////////////////////////*/