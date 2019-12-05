<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/dbconnect.jsp" %>
<%@ page import="java.sql.*"%>

<%
//세션 유지 시간 설정
session.setMaxInactiveInterval(1*60);

//세션값 처리
String session_id ="";//아이디
String session_name ="";//이름
String session_level="";//아이디

if(session.getAttribute("id")!=null){
	session_id = (String)session.getAttribute("id");//아이디
	session_name = (String)session.getAttribute("name");//이름
	session_level= (String)session.getAttribute("level");//아이디
}

%>
아이디: <%=session_id %><br>
이름: <%=session_name %><br>
레벨: <%=session_level%><br>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/basic.css"/>
</head>
<body>
<table width=100% height=80 border=1>
	<tr>
		<td width=30% align=left><a href="/">로고</a></td>
		<td width=30% align=center>...</td>
		<td width=30% align=right>
		<%if(session_id.equals("")){ //로그인전 %> 
		<a href="/member/login.jsp">로그인</a> | 
		<a href="/member/member_in.jsp">회원가입</a></td>
		<%}else{ //로그인후 %>
		<a href="/member/logout.jsp">로그아웃</a> | 
		<a href="/member/member_up.jsp">회원수정</a></td>
		<%} %>
	</tr>
</table>
<table width=100%>
	<tr>
		<td align=left><a href="/company.jsp">회사소개</a></td>
		<td align=left><a href="/bbs/list.jsp?code=notice">공지게시판</a></td>
		<td align=left><a href="/bbs/list.jsp?code=qna">Q&A게시판</a></td>
	</tr>
</table>