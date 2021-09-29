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
%>
	<p>hello jsp</p>
	<h4><%=name %></h4>
</body>
</html>