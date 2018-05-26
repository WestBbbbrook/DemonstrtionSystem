<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="isloginteacher.jsp"></jsp:include>

<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<jsp:useBean id="notice" class="com.ds.model.notice"></jsp:useBean>
	<jsp:setProperty property="*" name="notice" />
		<jsp:useBean id="ntcSer" class="com.ds.service.noticeService"></jsp:useBean>
	
	<%
	  /*out.println(stuInfo.getNicheng());
		out.println(stuInfo.getCsrq());
		out.println(stuInfo.getXq());
		out.println(stuInfo.getXqs());*/
	%>
	<% 
	if(ntcSer.addNtc(notice))
		out.print("success");
	else
		out.print("failure");
	%>
</body>
</html>