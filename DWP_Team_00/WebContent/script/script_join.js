/* 회원가입 JS */

$(function() {

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
	
	//email 중복검사
	$("#uEmail_01").keyup(function(){
		let uEmail_01 = $("#uEmail_01").val().trim();
		let uEmail_02 = $("#uEmail_02").val().trim();
		$("#uEmail").val(uEmail_01+"@"+uEmail_02);
		let uEmail = $("#uEmail").val().trim();
		
		if (uEmail_01 == "") {
			alert("이메일 주소를 확인해주세요");
			$("#uEmail_01").focus();			
		} else if (uEmail_02 == "") {
			alert("이메일 주소를 확인해주세요");
			$("#uEmail_02").focus();
		} 
		
	});



	/* 일반 회원가입 영역 끝 */



});