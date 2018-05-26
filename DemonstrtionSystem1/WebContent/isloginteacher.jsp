<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.ds.model.userTeacher"%>
<%@ page import="com.ds.service.userServiceTeacher"%>

<%
	userTeacher user = (userTeacher) session.getAttribute("user");
	if (user == null) {
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
	}
%>