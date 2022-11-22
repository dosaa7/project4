<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.member.bean.MemberVO"%>
<%@page import="com.member.dao.MemberDAO"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 정보</title>
    <link rel="stylesheet" href="board.css">
</head>
<body>
<%
  MemberDAO memberDAO = new MemberDAO();
  String id = request.getParameter("id");
  MemberVO u = memberDAO.getOne(Integer.parseInt(id));
  request.setAttribute("vo", u);
%>
  <h1>글 내용 보기</h1>
  <table id = "edit">
      <tr>
          <td>Userid</td><td>${vo.getUserid()}</td>
      </tr>
      <tr>
          <td>Username</td><td>${vo.getUsername()}</td>
      </tr>
      <tr>
          <td>Email</td><td>${vo.getEmail()}</td>
      </tr>
      <tr>
          <td>Photo</td><td><c:if test="${vo.getPhoto() ne ''}"><br />
          <img src="${pageContext.request.contextPath}/upload/${vo.getPhoto()}" class="photo"></c:if></td>
      </tr>
      <tr>
          <td>Detail</td><td>${vo.getDetail()}</td>
      </tr>
  </table>
<button type="button" onclick="history.back()">뒤로 가기</button>
<button type="button" onclick="location.href='editform.jsp?id=${vo.getSid}'">수정하기</button>
</body>
</html>
