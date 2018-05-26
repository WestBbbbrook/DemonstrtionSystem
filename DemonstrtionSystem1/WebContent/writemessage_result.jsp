<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="isloginstudent.jsp"></jsp:include>

<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<jsp:useBean id="message" class="com.ds.model.message"></jsp:useBean>
	<jsp:setProperty property="*" name="message" />
		<jsp:useBean id="mSer" class="com.ds.service.messageService"></jsp:useBean>
	
	<%
	  /*out.println(stuInfo.getNicheng());
		out.println(stuInfo.getCsrq());
		out.println(stuInfo.getXq());
		out.println(stuInfo.getXqs());*/
	%>
	<% 
	if(mSer.addMsg(message))
		out.print("success");
	else
		out.print("failure");
	%>
</body>
</html>