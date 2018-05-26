<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="isloginstudent.jsp"></jsp:include>

<body>
	<marquee>welcome student!!!!!</marquee>
	
	</br>
	<a href="messageboard.jsp" target="index_right"> 留言板 </a>
	</br>
	<a href="noticeshow.jsp" target="index_right"> 查看公告 </a>
	</br>
	<a href="exit.jsp" target="index_right">退出系统</a>

</body>
</html>