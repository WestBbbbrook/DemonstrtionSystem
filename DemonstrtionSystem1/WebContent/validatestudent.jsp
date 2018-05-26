<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="user" class="com.ds.model.userStudent"></jsp:useBean>
	<jsp:useBean id="userservicestu" class="com.ds.service.userServiceStudent"></jsp:useBean>

	<jsp:setProperty property="*" name="user" />
	<%
		//user.setUsername("aa");
		out.println(user.getUsername());
		out.println(user.getPassword());
		//if( userservice.valiUser(user))
		if (userservicestu.valiUser(user)) {
			session.setAttribute("user",user);
			//	<jsp:forward page="top.jsp" target="index_right"></jsp:forward>
	%>
	<jsp:forward page="student_right.jsp" ></jsp:forward>
	<%
		} else {
	%>
	<jsp:forward page="loginstudent.jsp"></jsp:forward>
	<%
		}
	%>
</body>
</html>