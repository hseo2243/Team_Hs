$(function() {

	//////////////////////////////////////////////////////////////////
	/* 회원가입 동의 영역 시작 */
	$("input#chkAll").click(function() {
		let boolChk = $(this).prop("checked");
		$(".termArea input[type=checkbox]").prop("checked", boolChk);
	});

	$("#joinFrm button").click(function() {
		let chkReq0 = $("#joinAgreement .termArea").eq(0).find("input").prop("checked");
		let chkReq1 = $("#joinAgreement .termArea").eq(1).find("input").prop("checked");
		if (chkReq0 == false) {
			alert("이용약관 동의를 체크해주세요");
			$("#joinAgreement .termArea").eq(0).find("input").css({ "outline": "1px solid #08f" })
			$("#joinAgreement .tremArea").eq(0).find("input").focus();
		} else if (chkReq1 == false) {
			alert("개인정보 수집 및 이용 동의를 체크해주세요.");
			$("#joinAgreement .termArea").eq(1).find("input").css({ "outline": "1px solid #08f" })
			$("#joinAgreement .tremArea").eq(1).find("input").focus();
		} else {
			$("#regFrm").submit();
		}
	});
	/* 회원가입 동의 영역 끝 */

	//////////////////////////////////////////////////////////////////
	/* 일반 회원가입 영역 시작 */
	// 선택된 email 도메인 자동 입력
	$("#emailDomain").change(function() {
		let eDomain = $(this).val().trim();
		$("#uEmail_02").val(eDomain);
		if (eDomain == "") {
			$("#uEmail_02").focus();
		} else {
			$("#uEmail_01").focus();
		}
	});

	//email 중복
	$("#uEmail_01").keyup(function() {
		let uEmail_01 = $("#uEmail_01").val().trim();
		let uEmail_02 = $("#uEmail_02").val().trim();
		$("#uEmail").val(uEmail_01 + "@" + uEmail_02);
		
		
		$("#uEmailMsg").show();

	});

	// 비밀번호 표시하기 
	$("#pwView").click(function() {
		let chkTF = $(this).prop("checked");;
		if (chkTF) {
			$("input#uPw").attr("type", "text");
		} else {
			$("input#uPw").attr("type", "password");
		}
	});

	// 비밀번호 / 비밀번호 확인 동일성 검사   +  유효성검사(정규표현식)
	$("#uPw_Re").keyup(function() {
		let uPw = $("#uPw").val();
		let uPw_Re = $("#uPw_Re").val();

		// after( )메서드는 선택자로 지정된 요소 다음에 생성되는 요소를 만드는 기능
		if (uPw != uPw_Re) {
			$("span#pwChk").text("비밀번호가 다릅니다.");
		} else {
			$("span#pwChk").text("");
		}

	});

	/* 회원가입 버튼 전송 실행 */
	$("#joinSbmBtn").click(function() {
		fnJoinSbm();
	});


	function fnJoinSbm() {

		let uEmail_01 = $("#uEmail_01").val().trim();
		let uEmail_02 = $("#uEmail_02").val().trim();
		$("#uEmail").val(uEmail_01 + "@" + uEmail_02);
		
		
		let uPw = $("#uPw").val().trim();
		$("#uPw").val(uPw);
		let uPw_Re = $("#uPw_Re").val().trim();
		let uName = $("#uName").val().trim();
		$("#uName").val(uName);
		let uPhone_01 = $("#uPhone_01").val().trim();
		let uPhone_02 = $("#uPhone_02").val().trim();
		let uPhone_03 = $("#uPhone_03").val().trim();
		$("#uPhone").val(uPhone_01 + "-" + uPhone_02 + "-" + uPhone_03);
		let uBirthday = $("#uBirthday").val().trim();

		if (uEmail_01 == "") {
			alert("이메일 주소를 입력해주세요.");
			$("#uEmail_01").focus();
			return;
		} else if (uEmail_02 == "") {
			alert("이메일 주소를 입력해주세요.");
			$("#uEmail_02").focus();
			return;
		} else if (uPw == "") {
			alert("비밀번호를 입력해주세요.");
			$("#uPw").focus();
			return;
		} else if (uPw != uPw_Re) {
			alert("비밀번호 일치여부를 확인해주세요.");
			$("#uPw_Re").focus();
			return;
		} else if (uName == "") {
			alert("이름을 입력해주세요.");
			$("#uName").focus();
			return;
		} else if (uEmail_01 == "") {
			alert("이메일 주소를 입력해주세요.");
			$("#uEmail_01").focus();
			return;
		} else if (uEmail_02 == "") {
			alert("이메일 주소를 입력해주세요.");
			$("#uEmail_02").focus();
			return;
		} else if (uBirthday != "" && isNaN(uBirthday)) {
			// 생년월일 숫자유효성 검사
			alert("생년월일은 숫자만 입력할 수 있습니다.");
			$("#uBirthday").val("").focus();
			return;
		} else if (uPhone_01 == "") {
			alert("전화번호를 입력해주세요.");
			$("#uPhone_01").focus();
			return;
		} else if (uPhone_02 == "") {
			alert("전화번호를 입력해주세요.");
			$("#uPhone_02").focus();
			return;
		} else if (uPhone_03 == "") {
			alert("전화번호를 입력해주세요.");
			$("#uPhone_03").focus();
			return;
		} else {
			let chkSbmTF = confirm("회원가입하시겠습니까?");
			if (chkSbmTF) {
				$("#regFrm").attr("action", "memberProc.jsp");
				$("#regFrm").submit();
			}
		}

	}

});