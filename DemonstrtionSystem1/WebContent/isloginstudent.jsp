<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.ds.model.userStudent"%>
<%@ page import="com.ds.service.userServiceStudent"%>

<% 
	userStudent user = (userStudent) session.getAttribute("user");
	if (user == null) {
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
	}
%>