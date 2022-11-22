<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.example.dao.BoardDAO"%>
<%@page import="com.example.bean.BoardVO"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>글 내용 - 실전프로젝트 자유게시판</title>
    <link rel="stylesheet" href="board.css">
</head>
<body>
<%
  BoardDAO boardDAO = new BoardDAO();
  String id = request.getParameter("id");
  BoardVO u = boardDAO.getBoard(Integer.parseInt(id));
  request.setAttribute("vo", u);
%>
  <h1>글 내용 보기</h1>
  <table id = "edit">
      <tr>
          <td>Category</td><td>${vo.getCategory()}</td>
      </tr>
      <tr>
          <td>title</td><td>${vo.getTitle()}</td>
      </tr>
      <tr>
          <td>writer</td><td>${vo.getWriter()}</td>
      </tr>
      <tr>
          <td>photo</td><td><c:if test="${vo.getPhoto() ne ''}"><br />
          <img src="${pageContext.request.contextPath}/upload/${vo.getPhoto()}" class="photo"></c:if></td>
      </tr>
      <tr>
          <td>Content</td><td>${vo.getContent()}</td>
      </tr>
  </table>
<button type="button" onclick="history.back()">뒤로 가기</button>
<button type="button" onclick="location.href='editform.jsp?id=${vo.getSeq}'">수정하기</button>
</body>
</html>
