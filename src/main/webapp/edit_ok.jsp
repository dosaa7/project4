<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.member.dao.MemberDAO"%>
<%@ page import="com.member.bean.MemberVO" %>
<%@ page import="com.member.common.FileUpload" %>

<% request.setCharacterEncoding("utf-8");

	MemberDAO memberDAO = new MemberDAO();
	FileUpload upload = new FileUpload();
	MemberVO u = upload.uploadPhoto(request);
	int i=memberDAO.updateMember(u);
	response.sendRedirect("posts.jsp");
%>