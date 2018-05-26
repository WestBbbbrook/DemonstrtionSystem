<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="isloginteacher.jsp"></jsp:include>

<body>
	<marquee>welcome teacher!!!!!</marquee>
	<a href="messagetboardteacher.jsp" target="index_right">查看留言</a>
	</br>
	<a href="noticeshow.jsp" target="index_right">查看公告</a>
	</br>
	<a href="addnotice.jsp" target="index_right">添加公告</a>
	</br>
	<a href="exit.jsp" target="index_right">退出</a>
</body>
</html>