<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>회원가입</title>
        <link rel="stylesheet" href="/style/style_Template.css">
        <link rel="stylesheet" href="/style/style_Common.css">
        <script src="/source/jquery-3.6.0.min.js"></script>
        <script src="/script/script_join.js"></script>
    </head>

    <body>
        <div id="wrap">
            <!-- 헤더템플릿 영역 시작 -->
            <%@ include file="/ind/headerTmp.jsp"%>
                <!-- 헤더템플릿 영역 끝 -->

                <main id="main">
                    <div id="contents" class="joinInsert">
                        <form action="memberProc.jsp" name="regFrm" id="regFrm">
                            <div id="joinSns">
                                <h2>SNS 계정으로 회원가입</h2>
                                <ul id="joinSnsUl" class="dFlex">
                                    <li class="joinSnsLi">
                                        <button type="button">
					<img src="/images/icon/icon_kakao.png"alt="">
					<p>카카오로 회원가입</p>
					</button></li>
                                    <li class="joinSnsLi">
                                        <button type="button">
					<img src="/images/icon/icon_google.png"alt="">
					<p>구글로 회원가입</p>
					</button></li>
                                    <li class="joinSnsLi">
                                        <button type="button">
					<img src="/images/icon/icon_naver.png"alt="">
					<p>네이버로 회원가입</p>
					</button></li>
                                </ul>
                            </div>
                            <!-- #joinSns -->
                            <div id="joinBasic">
                                <h2>기본정보</h2>
                                <table id="regFrmTbl">
                                    <tbody>
                                        <tr>
                                            <td>이메일</td>
                                            <td>
                                                <input type="text" id="uEmail_01" autofocus="autofocus">
                                                <span>@</span>
                                                <input type="text" id="uEmail_02">
                                                <select id="emailDomain" class="frmDropMenu">
							<option value="">직접 입력</option>
							<option>naver.com</option>
							<option>daum.net</option>
							<option>google.com</option>
							</select>
                                                <span id="uEmailMsg"></span>
                                                <input type="hidden" id="uEmail" name="uEmail">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>비밀번호</td>
                                            <td>
                                                <input type="password" id="uPw" name="uPw">
                                                <input type="checkbox" id="uPwView">
                                                <span>비밀번호 보기</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>비밀번호 확인</td>
                                            <td>
                                                <input type="password" id="uPw_Re" name="uPw_Re">
                                                <span id="pwChk"></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>이름</td>
                                            <td>
                                                <input type="text" id="uName" name="uName">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>전화번호</td>
                                            <td>
                                                <select name="uPhone_1" id="uPhone_01">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select>
                                                <span>-</span>
                                                <input type="text" id="uPhone_02" name="uPhone_02">
                                                <span>-</span>
                                                <input type="text" id="uPhone_03" name="uPhone_03">
                                                <div id="phoneAuthArea">
                                                    <input type="text" id="phoneAuth" placeholder="인증코드 입력">
                                                    <button type="button" id="phoneAuthBtn" class="frmBtn">인증코드 받기</button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>생년월일</td>
                                            <td>
                                                <input type="text" id="uBirthday" name="uBirthday" placeholder="ex.910101">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>좋아하는 빵 종류</td>
                                            <td>
                                                <label>식빵
								<input type="checkbox" name="uBread" value="식빵">
							</label>
                                                <label>크림빵
								<input type="checkbox" name="uBread" value="크림빵">
							</label>
                                                <label>도넛
								<input type="checkbox" name="uBread" value="도넛">
							</label>
                                                <label>고로케
								<input type="checkbox" name="uBread" value="고로케">
							</label>
                                                <label>팥빵
								<input type="checkbox" name="uBread" value="팥빵">
							</label>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!-- #joinBasic -->

                            <div id="joinAgreement">
                                <h2>전체동의</h2>
                                <div id="chkAllArea">
                                    <label> <input type="checkbox" id="chkAll"> 
						<span>이용약관 및 개인정보수집 및 이용, 쇼핑정보 수신(선택)에 모두 동의합니다.</span>
						</label>
                                </div>

                                <div id="licenseArea">
                                    <div class="termArea">
                                        <h3>[필수] 이용약관 동의</h3>
                                        <iframe src="/ind/usingAgree.jsp" class="usingAgree"></iframe>
                                        <label for="">
							<span>이용약관에 동의하십니까?</span>
							<input type="checkbox" class="usingAgreeChk chkRequired" data-link = "0">
							<span>동의함(필수)</span>
							</label>
                                    </div>
                                    <div class="termArea">
                                        <h3>[필수] 개인정보 수집 및 이용 동의</h3>
                                        <iframe src="/ind/personalInfoAgree.jsp" class="usingAgree"></iframe>
                                        <label for="">
							<span>개인정보 수집 및 이용에 동의하십니까?</span>
							<input type="checkbox" class="usingAgreeChk chkRequired" data-link = "1">
							<span>동의함(필수)</span>
							</label>
                                    </div>
                                    <div class="termArea">
                                        <h3>[선택] 쇼핑정보 수신 동의</h3>
                                        <iframe src="/ind/shopInfoAgree.jsp" class="usingAgree"></iframe>
                                        <label for="">
							<span>쇼핑정보 수신에 동의하십니까?</span>
							<input type="checkbox" class="usingAgreeChk chkRequired" data-link = "2">
							<span>동의함(선택)</span>
							</label>
                                    </div>
                                </div>
                            </div>
                            <ul id="joinBtnUl" class="dFlex">
                                <li id="joinBtnLi">
                                    <button class="frmBtn" id="joinSbmBtn" type="button">회원가입</button></li>
                                <li id="joinBtnLi">
                                    <button class="frmBtn" type="reset">다시쓰기</button></li>
                            </ul>

                        </form>
                    </div>
                </main>


                <!-- 푸터템플릿 영역 시작 -->
                <%@ include file="/ind/footerTmp.jsp"%>
                    <!-- 푸터템플릿 영역 끝 -->
        </div>
    </body>

    </html>