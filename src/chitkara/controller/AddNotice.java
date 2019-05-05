package chitkara.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import chitkara.dao.NoticeDao;
import chitkara.dao.UserDao;
import chitkara.operation.UserOperation;


public class AddNotice extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			NoticeDao notice = new NoticeDao();
			notice.setDate(request.getParameter("date"));
			notice.setMessage(request.getParameter("message"));
			
			int i=UserOperation.addnotice(notice);
			if(i>0)
			{
				HttpSession session=request.getSession(false);
				session.setAttribute("messege", "Notice added successfully");
				response.sendRedirect("adminHome.jsp");
				
			}
			else {
				HttpSession session=request.getSession(false);
				session.setAttribute("messege", "Notice not added");
				response.sendRedirect("adminHome.jsp");
				
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}

		
		
	}

}
