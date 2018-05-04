<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>   
    <title>inputStudentInfo.jsp</title>
  </head>
  <body>
  		<form action="studentManagementServlet?op=checkIN" method = post>
		<table border="1">
			<tr>
				<td>学生姓名：
				<td><input type = text name = sname>
			</tr>                                
			<tr>
				<td>班级名：
				<td><input type = radio name = cname value = "1">软件1班
					<input type = radio name = cname value = "2">软件2班
			</tr>
			<tr>
				<td>课程名：
				<td><input type = radio name = sub value = "yuwen">语文
					<input type = radio name = sub value = "shuxue">数学
					<input type = radio name = sub value = "yingyu">英语
			</tr>
			<tr>
				<td>学生成绩：
				<td><input type = text name = sgrade>
			</tr>
			<tr>
				<td>
				<td><input type = submit name = submit value = "确定">
			</tr>
			<tr>
				<td>
				<td><a href="showStudentInfo.jsp">查找学生成绩信息</a>
			</tr>
		</table>
		</form>
  </body>
</html>
