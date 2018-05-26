<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="isloginstudent.jsp"></jsp:include>

<body>
	<center>
		<form action="writemessage_result.jsp" method="post">
			<table >
				<tr>
					<td align="center" bgcolor=green colspan=2><font color=white>学生信息录入</font></td>
				</tr>
				<tr>
					<td>留言</td>
					<td><input type="text" size=20 name="content"></td>
				</tr>
				<tr ><td align="center" colspan="2" ><input type="submit"  value="提交">
			</table>
			
		</form>
	</center>
</body>
</html>