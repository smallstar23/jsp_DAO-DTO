<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.koreait.member.MemberDTO" %>
    <%
    	MemberDTO memberDTO= new MemberDTO();
    	memberDTO.setUserid("apple");
    	memberDTO.setUserpw("1234");
    	memberDTO.setUsername("김사과");
    %>
    
<jsp:useBean id="member" class="com.koreait.member.MemberDTO" scope="page"/>
<jsp:setProperty property="userid" name="member" value="banana"/>
<jsp:setProperty property="userpw" name="member" value="1111"/>
<jsp:setProperty property="username" name="member" value="반하나"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>javabeans test 1</title>
</head>
<body>
	<h2>자바빈트 테스트1</h2>
	<hr/>
	<p>MemberDTO의 userid : <%=memberDTO.getUserid() %></p>
	<p>MemberDTO의 userpw : <%=memberDTO.getUserpw() %></p>
	<p>MemberDTO의 username : <%=memberDTO.getUsername() %></p>	
	<hr/>
	<p><jsp:getProperty property="userid" name="member"/></p>
	<p><jsp:getProperty property="userpw" name="member"/></p>
		<p><jsp:getProperty property="username" name="member"/></p>
</body>
</html>