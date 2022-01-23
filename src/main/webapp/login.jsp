<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	    
    <%
    String userid=null;
    String name=null;
    int idx;
    int pagenum=1;
    if(session.getAttribute("userid")!= null){
    	userid=(String)session.getAttribute("userid");
    	name=(String)session.getAttribute("name");
    	idx=(int)session.getAttribute("idx");
    	
    	}
    	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<p>로그인</p>

	<%
	if(userid== null){
	%>
    
	<form method="post" action="login_ok.jsp">
		<p>아이디: <input type="text" name="userid"></p>
		<p>비밀번호: <input type="password" name="userpw"></p>
		<p><input type="submit" value="로그인"></p>
		<p>아직 회원이 아니신가요? <a href='./regist.jsp'>회원가입</a></p>
	</form>
	<%
	}else{
	%>
<h3><%=userid %>(<%=name %>)님, 방문을 환영합니다.</h3>
<p><input type="button" value="커뮤니티" onclick="location.href='./board/list.jsp?pagenum=<%=pagenum %>'"></p>
<p><input type="button" value="로그아웃" onclick="location.href='logout.jsp'"></p>
<p><input type="button" value="정보수정" onclick="location.href='info.jsp'"></p>


<%
	}
%>

</body>
</html>