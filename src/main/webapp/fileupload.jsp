<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.File" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>파일 업로드 결과</title>
</head>
<body>
<%
    String filename = "";
    int sizeLimit = 15*1024*1024;

    String realPath = request.getServletContext().getRealPath("upload");

    File dir = new File(realPath);
    if(!dir.exists()) dir.mkdirs();

    MultipartRequest multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());

    filename = multipartRequest.getFilesystemName("photo");
%>
</body>
</html>
