<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.ds.model.message"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="isloginteacher.jsp"></jsp:include>

<body>
	<jsp:useBean id="msgSer" class="com.ds.service.messageService"></jsp:useBean>
	留言板

	<%
		List msgs = msgSer.queryAllMsg();
		// out.print(stus.size());
		Iterator iter = msgs.iterator();
	%>
	<table>
		<tr>
			<td>id</td>
			<td>留言</td>
			<td>回复</td>

		</tr>
		<%
			int i = 0;
			while (iter.hasNext()) {
				message msg = (message) iter.next();
		%>
		<tr <%if (i % 2 == 0) {%> bgcolor="#F0F8FF" <%}%>>
			<td><%=msg.getId()%></td>
			<td><%=msg.getContent()%></td>
			<td><%=msg.getReply()%></td>
		</tr>
		<%
			i++;
			}
		%>

	</table>
	</br>
</body>
</html>