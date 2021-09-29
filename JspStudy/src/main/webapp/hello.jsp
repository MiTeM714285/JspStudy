<%@page import="com.web.dao.UserDaoImpl"%>
<%@page import="com.web.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	String name = "Test";
	UserDao userDao = new UserDaoImpl();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	name = userDao.getUserName("junil","1234");
	name = name + "님 환영합니다";
	int flag = userDao.login("junil", "1234");
	String msg = null;
	if (flag == 0) {
		msg = "아이디가 잘못되었습니다";
	} else if (flag == 1) {
		msg = "패드워드가 잘못되었습니다";
	} else if (flag == 2) {
		msg = "로그인 성공";
	} else {
		msg = "DB오류";
	}
%>
	<p>hello jsp</p>
	<h4><%=name %></h4>
	<h2><%=msg %></h2>
</body>
</html>