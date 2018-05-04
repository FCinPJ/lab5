<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="entity.studentInfo"%>
<jsp:useBean id="smbean" type = "Bean.studentManagementBean" scope = "session"></jsp:useBean>
<html>
<head>
<title>showSingleStudent.jsp</title>
</head>
<body>
	<%	String sname = (String)request.getParameter("sname");
		double sum=0;
		studentInfo[] c = new studentInfo[100];
		c = smbean.getC();
		int count = smbean.getCount();
		for (int i = 0;i < count; i++){
			if (c[i].getSname().equals(sname)){
				sum = c[i].getYuwen()+c[i].getShuxue()+c[i].getYingyu();
				out.print("总成绩："+sum);
				out.print("平均成绩："+sum/3);
			}
		}
	%>
	<a href="showStudentInfo.jsp">返回</a>
</body>
</html>