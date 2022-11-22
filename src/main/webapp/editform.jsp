<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.member.dao.MemberDAO, com.member.bean.MemberVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<link rel="stylesheet" href="board.css">
</head>
<body>

<%
	MemberDAO memberDAO = new MemberDAO();
	String id=request.getParameter("id");	
	MemberVO u=memberDAO.getOne(Integer.parseInt(id));
	request.setAttribute("vo", u);
%>

<h1>정보 수정</h1>
<form action="edit_ok.jsp" method="post" enctype="multipart/form-data">
<input type="hidden" name="sid" value="<%=u.getSid() %>"/>
<table>
	<tr><td>Password:</td><td><input type="password" name="password" value="<%= u.getPassword()%>"/></td></tr>
	<tr><td>Username:</td><td><input type="text" name="username" value="<%= u.getUsername()%>" /></td></tr>
	<tr><td>Email:</td><td><input type="text" name="email" value="<%= u.getEmail()%>" /></td></tr>
	<tr><td>BlogUrl:</td><td><input type="text" name="blogurl" value="<%= u.getBlogurl()%>"/></td></tr>
	<tr><td>Photo</td><td><input type="file" name="photo" value="${vo.getPhoto()}"/>
	<c:if test="${vo.getPhoto() ne ''}"><br /><img src="${pageContext.request.contextPath}/upload/${vo.getPhoto()}" class="photo"></c:if></td></tr>
	<tr><td>Detail:</td><td><textarea cols="50" rows="5" name="detail" value="<%= u.getDetail()%>"></textarea></td></tr>
<tr><td colspan="2"><input type="submit" value="수정"/>
<input type="button" value="취소" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>