/**
 * 
 */
$(function() {


	/* 로그인 버튼 전송 실행 */
	$("#loginBtn").click(function() {
		fnLoginSbm();
	});

	/* 폼실행 엔터키 이벤트 처리*/
	$(window).keydown(function() {
		let code = event.keyCode;
		if (code == 13) return false;
	});
	$(window).keyup(function() {
		let code = event.keyCode;
		if (code == "13") return fnLoginSbm();
	});

	function fnLoginSbm() {

		let id = $(".uEmail").val().trim();
		$(".uEmail").val(id);
		let pw = $(".uPw").val().trim();
		$(".uPw").val(pw);

		if (id == "") {
			alert("이메일을 입력해주세요.");
			$(".uEmail").focus();
			return;
		} else if (pw == "") {
			alert("비밀번호를 입력해주세요.");
			$(".uPw").focus();
			return;
		} else {
			$("#loginFrm").attr("action", "/member/loginProc.jsp");
			$("#loginFrm").submit();

		}
	};
	
});