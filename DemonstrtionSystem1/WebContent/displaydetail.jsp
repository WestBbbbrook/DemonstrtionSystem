<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.ds.model.algorithmIO"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
	<jsp:useBean id="ioSer" class="com.ds.service.algorithmIOService"></jsp:useBean>
	算法演示

	<%
		int id = Integer.parseInt(request.getParameter("id"));
        //String ss="src/video/sf"+String.valueOf(id)+".mp4";
        String ss="src/video/"+String.valueOf(id)+".m4v";
        if(id==22)
        	ss="src/video/"+String.valueOf(id)+".mov";
		List als = ioSer.queryAllALIO(id/10);
		// out.print(stus.size());

		Iterator iter = als.iterator();
	%>
	<table>
		<tr>
			<td>id</td>
			<td>名称</td>
			<td>输入</td>
			<td>输出</td>
		</tr>
		<%
			int i = 0;
			while (iter.hasNext()) {
				algorithmIO al = (algorithmIO) iter.next();
				if(al.getId()==id%10){
					System.out.println(id);
					System.out.println(ss);
		%>
		<tr>
			<td><%=al.getId()%></td>
			<td><%=al.getName()%></td>			
			<td><img src="src/pic/<%=al.getInput()%>"/></td>
			<td><img src="src/pic/<%=al.getOutput()%>"/></td>
			
		</tr>
		<%
				}
			}
		%>

    
	</table>
	</br>
	<!--  <embed src="src/video/sf1.mp4" width="500" height="500">-->
	<object classid="clsid:22D6F312-B0F6-11D0-94AB-0080C74C7E95" height="500" id="MediaPlayer1" width="500">
     <br><param name="AutoStart" value="1">
     <param name="AutoSize" value="1">
     <param name="stretchToFit" value="1">
     <!--是否按比例伸展-->
     <param name="uiMode" value="invisible">
     <!--播放器显示模式:Full显示全部;mini最简化;None不显示播放控制,只显示视频窗口;invisible全部不显示-->
     <param name="windowlessVideo" value="0">
     <!--如果是0可以允许全屏,否则只能在窗口中查看-->
     <param name="ShowStatuBar" value="0">
     <param name="Filename" value=<%=ss %>>
    
    </object>
    
	
</body>
</html>