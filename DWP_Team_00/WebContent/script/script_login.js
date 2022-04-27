/**
 * 
 */
$(function() {

	$("#emailDomain").change(function() {
		let eDomain = $(this).val().trim();
		$("#uEmail_02").val(eDomain);
		if (eDomain == "") {
			$("#uEmail_02").focus();
		} else {
			$("#uEmail_01").focus();
		}
	});

	/* 로그인 버튼 전송 실행 */
	$("#loginPBtn").click(function() {
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



		let uEmail_01 = $("#uEmail_01").val().trim();
		let uEmail_02 = $("#uEmail_02").val().trim();
		$("#uEmail").val(uEmail_01 + "@" + uEmail_02);
		
		
		let uEmail = $("#uEmail").val().trim();
		
		
		let uPw = $("#uPw").val().trim();
		$("#uPw").val(uPw);

		if (uEmail == "") {
			alert("이메일을 입력해주세요.");
			$("#uEmail").focus();
			return;
		} else if (uPw == "") {
			alert("비밀번호를 입력해주세요.");
			$("#uPw").focus();
			return;
		} else {
			$("#loginFrm").attr("action", "loginProc.jsp");
			$("#loginFrm").submit();

		}
	};

	$("#mainBtn").click(function() {
		location.href = "/index.jsp";
	});

});