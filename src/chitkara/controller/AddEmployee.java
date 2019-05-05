package chitkara.controller;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chitkara.dao.UserDao;
import chitkara.operation.UserOperation;

public class AddEmployee extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response) {
		doPost(request,response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) {
		try {
			UserDao user=new UserDao();
			user.setName(request.getParameter("name"));
			user.setEmail(request.getParameter("email"));
			user.setPno(request.getParameter("pno"));
			user.setCollege(request.getParameter("college"));
			user.setYog(request.getParameter("yog"));
			user.setSkill(request.getParameter("skill"));
			user.setUid(request.getParameter("uid"));
			int i=UserOperation.addEmployee(user);
			if(i>0)
			{
				HttpSession session=request.getSession(false);
				session.setAttribute("messege", "Student added successfully");
				response.sendRedirect("resume.jsp");
				
			}
			else {
				HttpSession session=request.getSession(false);
				session.setAttribute("messege", "Student not added");
				response.sendRedirect("resume.jsp");
				
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
		
	}
}