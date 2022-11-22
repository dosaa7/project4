<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.member.dao.MemberDAO, com.member.bean.MemberVO"%>
<%@ page import="com.member.common.FileUpload" %>
<%
	String sid = request.getParameter("id");
	if (sid != ""){  
		int id = Integer.parseInt(sid);
		MemberVO u = new MemberVO();
		u.setSid(id);

		MemberDAO memberDAO = new MemberDAO();
		memberDAO.deleteMember(u);
	}
	response.sendRedirect("posts.jsp");
%>