<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.ds.model.notice"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="ntcSer" class="com.ds.service.noticeService"></jsp:useBean>
	公告栏

	<%
		List ntcs = ntcSer.queryAllNtc();
		// out.print(stus.size());
		
		Iterator iter = ntcs.iterator();
	%>
	<table>
		<tr>
			<td>id</td>
			<td>公告</td>
			<td>日期</td>

		</tr>
		<%
			int i = 0;
			while (iter.hasNext()) {
				notice ntc = (notice) iter.next();
		%>
		<tr <%if (i % 2 == 0) {%> bgcolor="#F0F8FF" <%}%>>
			<td><%=ntc.getNid()%></td>
			<td><%=ntc.getNcontent()%></td>
			<td><%=ntc.getDate()%></td>
		</tr>
		<%
			i++;
			}
		%>

	</table>
	</br>
</body>
</html>