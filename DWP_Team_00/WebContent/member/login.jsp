<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>로그인</title>
<link rel="stylesheet" href="/style/style_Template.css">
<link rel="stylesheet" href="/style/style_Common.css">
<script src="/source/jquery-3.6.0.min.js"></script>
<script src="/script/script_login.js"></script>
</head>
<body>
	<div id="wrap">

		<!-- 헤더템플릿 영역 시작 -->
		<%@include file="/ind/headerTmp.jsp"%>
		<!-- 헤더템플릿 영역 끝 -->

		<!-- 메인영역 시작 -->
		<main id="main">
			<div id="content" class="loginInsert">
				<form action="loginProc.jsp" name="loginFrm" id="loginFrm">
					<h2>로그인</h2>
					<table id="regFrmTbl">
						<tbody>
							<tr>
								<td>이메일</td>
								<td>
								<input type="text" id="uEmail_01">
								<span>@</span>
								<input type="text" id="uEmail_02">
								<select name="uEmail_02" id="emailDomain" class="frmDropMenu">
									<option value="">직접 입력</option>
									<option>naver.com</option>
									<option>daum.net</option>
									<option>google.com</option>
								</select>
								<input type="hidden" name="uEmail" id="uEmail">
								</td>
							</tr>
							<tr>
								<td>비밀번호</td>
								<td><input type="password" name="uPw" id="uPw"></td>
							</tr>

						</tbody>
					</table>
					<ul id="loginMenuUl" class="dFlex">
						<li>
							<button type="button" id="loginPBtn">로그인</button>
						</li>
						<li><button type="reset">다시 쓰기</button></li>
						<li><button type="button" id="mainBtn">메인으로</button></li>
					</ul>
					<a href="#">이메일/비밀번호 찾기</a>
				</form>
			</div>
		</main>
		<!-- 메인영역 끝 -->

		<!-- 푸터템플릿 영역 시작 -->
		<%@include file="/ind/footerTmp.jsp"%>
		<!-- 푸터템플릿 영역 끝 -->

	</div>
</body>
</html>