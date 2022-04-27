<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>헤더템플릿</title>
</head>
<body> 

	<header id="header">
		<div id="header_LogoImg">
			<a href="/index.jsp"><img src="/images/logo/banner_image_1.png" alt="" /></a>
		</div>

		<div class="screen"></div>
		<div id="header_Login">
			<div id="header_BeforeLogin">
				<div id="header_BeforeSns">
					<fieldset>
						<legend>SNS 로그인</legend>
						<ul class="dFlex">
							<li class="header_BSLi">
							<img src="/images/icon/icon_kakao.png"
								alt=""></li>
							<li class="header_BSLi">
							<img src="/images/icon/icon_google.png"
								alt=""></li>
							<li class="header_BSLi">
							<img src="/images/icon/icon_naver.png"
								alt=""></li>
						</ul>
					</fieldset>
				</div>
				<!-- #header_BeforeSns -->
				<div id="header_BeforeId">
					<fieldset>
						<legend>ID 로그인</legend>
						<ul id="header_BeforeLogin">
							<li class="header_BLLi">
							
							<button type="button" id="loginBtn">로그인</button>
							</li>
							<li class="header_BLLi">
							<button type="button" id="joinBtn">회원가입</button>
							</li>
						</ul>
					</fieldset>
				</div>
				<!-- #header_BeforeId -->
			</div>
			<ul id="header_AfterLogin">
				<li class="header_ALLi"><a href="#">회원정보수정</a></li>
				<li class="header_ALLi"><a href="#">찜한 빵집 보기</a></li>
				<li class="header_ALLi"><a href="#">로그아웃</a></li>
			</ul>
			<!-- #header_AfterLogin -->
		</div>
		<!-- #header_Login -->

		<nav id="header_GNB">
			<ul id="header_MainUl" class="dFlex">
				<li class="header_MainLi"><a href="#">공지사항</a></li>
				<li class="header_MainLi"><a href="#">빵집소개</a></li>
				<li class="header_MainLi"><a href="#">리뷰</a></li>
				<li id="header_MemberIcon"><img src="/images/icon/icon_member.png"
					alt="회원정보" /></li>
				<!-- .header_MemberIcon -->
			</ul>
			<!-- #header_MainUl  -->
		</nav>
		<div id="main_TopBtn">
			<button id="topBtn" type="button">
				<img src="/images/logo/icon_bread.png" alt="" />
			</button>
		</div>

	</header>

</body>
</html>