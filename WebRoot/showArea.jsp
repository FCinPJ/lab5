<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:useBean id = "sData" type = "Bean.computerAreaBean" scope = "request"/>
<html>
  <head>
    <title>showArea.jsp</title>
  </head>  
  <body>
  		圆半径：<jsp:getProperty property="r" name="sData"/>
  		圆面积：<jsp:getProperty property="s1" name="sData"/><br>
  		矩形长：<jsp:getProperty property="a" name="sData"/>矩形宽：<jsp:getProperty property="b" name="sData"/>矩形面积<jsp:getProperty property="s2" name="sData"/><br>
  		梯形上底：<jsp:getProperty property="c" name="sData"/>梯形下底：<jsp:getProperty property="d" name="sData"/>梯形高<jsp:getProperty property="h" name="sData"/>梯形面积：<jsp:getProperty property="s3" name="sData"/><br>
  </body>
</html>
