<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>메인페이지</title>
<link rel="stylesheet" href="/style/style_Template.css">
<link rel="stylesheet" href="/style/style_Common.css">
<script src="/source/jquery-3.6.0.min.js"></script>
<script src="/script/script_main.js"></script>
</head>

<body>
	<div id="wrap">
		<!-- 헤더템플릿 영역 시작 -->
		<%@ include file="/ind/headerTmp.jsp"%>
		<!-- 헤더템플릿 영역 끝 -->

		<main id="main">
			<div id="main_Bestpost">
			<!-- 예시로 넣은 이미지입니다. 게시판 작업 종료 후 수정해주세요. -->
				<h2>인기글</h2>
				<ul id="main_BestUl" class="dFlex">
					<li class="main_MenuLi">
						 <span>글 제목</span> 
						 <img src="/images/etc/img_bread1.jpg" alt="" /> 
						 <span>글 내용 더보기</span>
					</li>
					<li class="main_MenuLi">
						<span>글 제목</span> 
						<img src="/images/etc/img_bread2.jpg" alt="" /> 
						<span>글 내용 더보기...</span>
					</li>
					<li class="main_MenuLi">
						<span>글 제목</span> 
						<img src="/images/etc/img_bread3.jpg" alt="" /> 
						<span>글 내용 더보기...</span>
					</li>
				</ul>
			</div>
			<hr />
			<div id="main_LatestPost">
				<h2>최신글</h2>
				<ul id="main_LatestUl" class="dFlex">
					<li class="main_MenuLi">
						 <span>글 제목</span> 
						 <img src="/images/etc/img_bread1.jpg" alt="" /> 
						 <span>글 내용 더보기</span>
					</li>
					<li class="main_MenuLi">
						<span>글 제목</span> 
						<img src="/images/etc/img_bread2.jpg" alt="" /> 
						<span>글 내용 더보기...</span>
					</li>
					<li class="main_MenuLi">
						<span>글 제목</span> 
						<img src="/images/etc/img_bread3.jpg" alt="" /> 
						<span>글 내용 더보기...</span>
					</li>
				</ul>
			</div>
		</main>

		<!-- 푸터템플릿 영역 시작 -->
		<%@ include file="/ind/footerTmp.jsp"%>
		<!-- 푸터템플릿 영역 끝 -->

	</div>
	<!-- div#wrap -->
</body>

</html>