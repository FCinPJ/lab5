<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="entity.studentInfo"%>
<jsp:useBean id="smbean" type = "Bean.studentManagementBean" scope = "session"></jsp:useBean>
<html>
<head>
<title>showClass</title>
</head>
<body>
	<%
		int cname = Integer.parseInt(request.getParameter("cname"));
		double sum=0;
		int count = smbean.getCount();
		studentInfo[] c = new studentInfo[100];
		c = smbean.getC();
		for (int i = 0; i < count;i++){
			if (c[i].getCname()==cname){
				out.print("姓名");
				out.println(c[i].getSname());
				out.print("语文");
				out.print(c[i].getYuwen());
				out.print("数学");
				out.print(c[i].getShuxue());
				out.print("英语");
				out.print(c[i].getYingyu());
			}
		}
	%>
	<a href="showStudentInfo.jsp">返回</a>
</body>
</html>