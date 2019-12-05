<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/header.jsp"%>

<table width=600 align=center>
	<tr>
		<td>제목</td>
		<td><input type="text" name="subject" value=""></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><textarea rows="80" cols="150"></td>
	</tr>
	<tr>
		<td>첨부</td>
		<td><input type="file" name="file1" value=""></td>
	</tr>
	<tr>
		<td>첨부</td>
		<td><input onclick="send()" value="글쓰기"></td>
	</tr>
</table>
<% //<a onclick="send()" ><img src=""></a>%>
<%@ include file="/footer.jsp"%>