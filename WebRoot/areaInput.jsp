<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>areaInput.jsp</title>
  </head>
  <body>
    <form action="computerAreaServlet" method = post name = form>
    	圆面积：<input type = text name = r value="0"><br>
    	矩形长：<input type = text name = a value="0"><br>矩形宽<input type = text name = b value="0"><br>
    	梯形上底：<input type = text name = c value="0"><br>矩形下底<input type = text name = d value="0"><br>矩形高：<input type = text name = h value="0"><br>
    	<input type = submit name = submit value="确定"><br>
    </form>
  </body>
</html>
