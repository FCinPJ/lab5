package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.computerAreaBean;

public class computerAreaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public computerAreaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		computerAreaBean sData = new computerAreaBean();
		request.setAttribute("sData", sData);
		
		double r = Double.parseDouble(request.getParameter("r"));
		sData.setR(r);
		double a = Double.parseDouble(request.getParameter("a"));
		sData.setA(a);
		double b = Double.parseDouble(request.getParameter("b"));
		sData.setB(b);
		double c = Double.parseDouble(request.getParameter("c"));
		sData.setC(c);
		double d = Double.parseDouble(request.getParameter("d"));
		sData.setD(d);
		double h = Double.parseDouble(request.getParameter("h"));
		sData.setH(h);
		
		double s1 = 3.14*r*r;
		sData.setS1(s1);
		
		double s2 = a*b;
		sData.setS2(s2);
		
		double s3 = (c+d)*h/2;
		sData.setS3(s3);
	
		RequestDispatcher dispatcher = request.getRequestDispatcher("showArea.jsp");
		dispatcher.forward(request, response);
	}

}
