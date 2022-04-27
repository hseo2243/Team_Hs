<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="mMgr" class="pack_Member.MemberMgr" />

<%
request.setCharacterEncoding("UTF-8");
String uEmail = request.getParameter("uEmail");
String uPw = request.getParameter("uPw");
boolean loginRes = mMgr.loginMember(uEmail, uPw);
%>
<script>
	
<%if (loginRes) {
	session.setAttribute("uEmail_Session", uEmail);%>
	location.href = "/index.jsp";
<%} else {%>
	alert("아이디 또는 비밀번호를 확인해주세요.");
	location.href = "/member/login.jsp";
<%}%>
	
</script>