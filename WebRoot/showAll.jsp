<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="entity.studentInfo"%>
<jsp:useBean id="smbean" type = "Bean.studentManagementBean" scope = "session"></jsp:useBean>
<html>
<head>
<title>showAll.jsp</title>
</head>
<body>
	<%
		studentInfo[] c = new studentInfo[100];
		c = smbean.getC();
		int count = smbean.getCount();
		for (int i = 0; i < count;i++){
			out.print("姓名");
			out.println(c[i].getSname());
			
			if (c[i].getCname()==1){
				out.print("软件1601");
			}
			if (c[i].getCname()==2){
				out.print("软件1602");
			}
			out.print("语文");
			out.print(c[i].getYuwen());
			out.print("数学");
			out.print(c[i].getShuxue());
			out.print("英语");
			out.print(c[i].getYingyu());
		}
	%>
	<a href="showStudentInfo.jsp">返回</a>
</body>
</html>