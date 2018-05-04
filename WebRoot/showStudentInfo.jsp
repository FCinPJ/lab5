<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>showStudentInfo.jsp</title>
</head>
<body>
	
	<a href="showAll.jsp">显示所有的成绩</a><br> 
	
	<form action="showSingleStudent.jsp" method=post>	
		根据学生姓名显示该学生的平均成绩和总成绩<br>
		姓名：<input type=text name=sname><br>
	<input type=submit name=submit value="确定">
	</form>
	<form action="showSub.jsp" method=post>
		根据课程名称显示该课程所有学生的成绩，以及该课程的平均成绩<br>
		<input type=radio name=sub value="yuwen">语文
		<input type=radio name=sub value="shuxue">数学
		<input type=radio name=sub value="yingyu">英语<br>
		<input type=submit name=submit value="确定">
	</form>
	<form action="showClass.jsp" method=post>	
		根据班级名称显示该班级的所有学生的成绩<br>
		 <input type=radio name=cname value="1">软件1班
		<input type=radio name=cname value="2">软件2班<br> 
		<input type=submit name=submit value="确定">
	</form>
</body>
</html>