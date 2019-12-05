<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ include file="/header.jsp"%>

<script>
	function send() {
		if(document.login.id.value==""){
			alert("아이디 입력했");
			document.login.id.focus();
			return;
		}if(document.login.id.value.length<4||document.login.id.value.length>12){
				alert("아이디 4자 이상");
				document.login.id.focus();
				return;			
		}else if(document.login.pass.value==""){
			alert("비밀번호 입력했");
			document.login.pass.focus();
			return;
		}
		document.login.submit();
	}
</script>
<!--  
<table width=600 align=center>
	<form name="member" action="member_insert.jsp" method="post">
		<tr>
			<td>* 아이디</td>
			<td><input type="text" name="id" value=""></td>
		</tr>
	</form>
-->
<table width=600 align=center>
	<tr>
		<form name="login" action="/member/login_ok.jsp" method="post">
			<td>아이디 : <input type="text" name="id"> <br> 비밀번호 :
				<input type="text" name="pass"></td>

		</form>

		<td><button onclick="send()">로그인</button></td>
	</tr>

	<%@ include file="/footer.jsp"%>