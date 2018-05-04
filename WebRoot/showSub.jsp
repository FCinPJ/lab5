<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="entity.studentInfo"%>
<jsp:useBean id="smbean" type = "Bean.studentManagementBean" scope = "session"></jsp:useBean>
<html>
<head>
<title>showSub.jsp</title>
</head>
<body>
	<%	String sub = (String)request.getParameter("sub");
		double sum=0;
		studentInfo[] c = new studentInfo[100];
		int count = smbean.getCount();
		c = smbean.getC();
		for (int i = 0;i < count; i++){
			if (sub.equals("yuwen")){
				out.print("姓名");
				out.println(c[i].getSname());
				out.print("语文");
				out.print(c[i].getYuwen());
				sum = sum+c[i].getYuwen();
			}if (sub.equals("shuxue")){
				out.print("姓名");
				out.println(c[i].getSname());
				out.print("数学");
				out.print(c[i].getShuxue());
				sum = sum+c[i].getShuxue();
			}
			if (sub.equals("yingyu")){
				out.print("姓名");
				out.println(c[i].getSname());
				out.print("英语");
				out.print(c[i].getYingyu());
				sum = sum+c[i].getYingyu();
			}
		}
		out.print("平均成绩："+sum/c.length);
	%>
	<a href="showStudentInfo.jsp">返回</a>
</body>
</html>