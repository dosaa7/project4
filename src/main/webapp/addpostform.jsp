<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 추가</title>
<link rel="stylesheet" href="board.css">
</head>
<body>

<h1>회원 정보 추가</h1>
<form action="add_ok.jsp" method="post" enctype="multipart/form-data">
<table>
    <tr><td>Userid:</td><td><input type="text" name="userid"/></td></tr>
    <tr><td>Password:</td><td><input type="password" name="password"/></td></tr>
    <tr><td>Username:</td><td><input type="text" name="username"/></td></tr>
    <tr><td>Email:</td><td><input type="text" name="email"></td></tr>
    <tr><td>BlogUrl:</td><td><input type="text" name="blogurl"/></td></tr>
    <tr><td>Photo:</td><td><input type="file" name="photo"/></td></tr>
    <tr><td>Detail:</td><td><textarea cols="50" rows="5" name="detail"></textarea></td></tr>
<tr><td><a href="posts.jsp">회원 목록 보기</a></td><td align="right"><input type="submit" value="회원 추가"/></td></tr>
</table>
</form>

</body>
</html>