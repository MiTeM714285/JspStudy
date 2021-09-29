<%@page import="com.web.dao.UserDao"%>
<%@page import="com.web.dao.UserDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	UserDao userDao = new UserDaoImpl();
	
%>

<%
	String id = request.getParameter("id"); // request 는 요청으로, 요청으로부터 받은 데이터 안에서 파라미터, 즉 값을 가지고옴
	String password = request.getParameter("password");
	String msg = null;
	int flag = userDao.login(id, password);

	if(flag == 0) {
		msg = "아이디가 없습니다";
	} else if(flag == 1) {
		msg = "잘못된 비밀번호압니다";
	} else if(flag == 2) {
		msg = "로그인 성공";
		response.sendRedirect("hello.jsp");
	} else {
		msg = "DB오류";
	}
	
	System.out.println(msg);
	
	
%>