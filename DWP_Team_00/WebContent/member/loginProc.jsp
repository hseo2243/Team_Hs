<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="mMgr" class="pack_Member.MemberMgr" />

<%
request.setCharacterEncoding("UTF-8");
String email = request.getParameter("uEmail");
String pw = request.getParameter("uPw");
boolean loginRes = mMgr.loginMember(email, pw);
%>
<script>
	
<%if (loginRes) {
	session.setAttribute("uEmail_Session", uEmail);%>
	location.href = "/index.jsp";
<%} else {%>
	alert("이메일 또는 비밀번호를 확인해주세요.");
	location.href = "/index.jsp";
<%}%>
	
</script>