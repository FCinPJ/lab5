package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.computerAreaBean;
import Bean.studentManagementBean;
import entity.studentInfo;

public class studentManagementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public studentManagementServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op=request.getParameter("op");
		if (op.equals("checkIN")) {
			checkIn(request, response);
		}
	}
	protected void checkIn(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//录入成绩
		HttpSession session = request.getSession();
		studentManagementBean smbean = new studentManagementBean();
		session.setAttribute("smbean", smbean);

		String sname = request.getParameter("sname");// 学生姓名
		int cname = Integer.parseInt(request.getParameter("cname"));// 班级名
		String sub = request.getParameter("sub");// 学科名
		double sgrade = Double.parseDouble(request.getParameter("sgrade"));// 成绩

		studentInfo s = new studentInfo(sname, cname, sub, sgrade);
		smbean.setC(s);
		response.sendRedirect("inputStudentInfo.jsp");
	}
}
	
	
	
	
	
	
	
	
	
	
	