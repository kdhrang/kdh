<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/header.jsp"%>

<%
	//회원가입 여부
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pass = request.getParameter("pass");

	String sql = "select * from member2 where memberid = '" + id + "'and memberpass = '" + pass + "'";
	Connection conn = DriverManager.getConnection(url, user, password);
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql); //ResultSet에 담음 //select 쓸때

	String memberid = "";
	String memberpass = "";
	String membername = "";
	String memberlevel = "";

	if (rs.next()) {
		memberid = rs.getString("memberid");
		memberpass = rs.getString("memberpass");
		membername = rs.getString("membername");
		memberlevel = rs.getString("level");
		
		out.print(memberid);
	}

	
	if (memberid.equals("")) {
	//닫은거임
%> 
<script>
	alert("아이디가 없거나 비밀번호가 일치하지 않습니다.");
</script>
<% //새로 연거임
	} else {
		session.setAttribute("id", memberid); //아이디
		session.setAttribute("name", membername); //이름
		session.setAttribute("level", memberlevel); //레벨
	}
	//닫은거임
	
	
%>

<script>
	location.href = "/";
</script>
