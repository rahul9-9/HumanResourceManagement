package chitkara.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chitkara.dao.ComplaintDao;
import chitkara.dao.NoticeDao;
import chitkara.dao.UserDao;
import chitkara.operation.UserOperation;


public class AddComplaint extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			ComplaintDao notice = new ComplaintDao();
			notice.setName(request.getParameter("name"));
			notice.setEmail(request.getParameter("email"));
			notice.setMessage(request.getParameter("message"));
			
			int i=UserOperation.addComplaint(notice);
			if(i>0)
			{
				HttpSession session=request.getSession(false);
				session.setAttribute("messege", "Notice added successfully");
				response.sendRedirect("userHome.jsp");
				
			}
			else {
				HttpSession session=request.getSession(false);
				session.setAttribute("messege", "Notice not added");
				response.sendRedirect("userHome.jsp");
				
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}

		
		
	}

}
