package chitkara.controller;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chitkara.dao.UserDao;
import chitkara.operation.UserOperation;



public class LoginController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		 UserDao user=new UserDao();
		user.setUid(request.getParameter("uid"));
		
		 user=UserOperation.login(user);
		 PrintWriter out=response.getWriter();
		 if(user!=null&&user.getUid().equalsIgnoreCase("291")) {
			//request.getRequestDispatcher("adminHome.jsp").include(request, response);
			 //HttpSession session=request.getSession(true);
			 
			 response.sendRedirect("adminHome.jsp");
		 }
		 
		 else {
			 response.sendRedirect("../userHome.jsp");
		 }
	}catch(Exception e) {
		e.printStackTrace();
	}
	}

}
