<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.ds.model.algorithm"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="aSer" class="com.ds.service.algorithmService"></jsp:useBean>
	算法演示

	<%
		int id = Integer.parseInt(request.getParameter("id"));

		List als = aSer.queryAllAl(id);
		// out.print(stus.size());

		Iterator iter = als.iterator();
	%>
	<table>
		<tr>
			<td>id</td>
			<td>名称</td>
			<td>输入</td>
			<td>输出</td>
			<td></td>
		</tr>
		<%
			int i = 0;
			while (iter.hasNext()) {
				algorithm al = (algorithm) iter.next();
		%>
		<tr <%if (i % 2 == 0) {%> bgcolor="#F0F8FF" <%}%>>
			<td><%=al.getId()%></td>
			<td><%=al.getName()%></td>
			<td><%=al.getInput()%></td>
			<td><%=al.getOutput()%></td>

			<td><a href="displayAl.jsp?id=<%=al.getId()%>">查看</a></td>
		</tr>
		<%
			i++;
			}
		%>

	</table>
	</br>
</body>
</html>