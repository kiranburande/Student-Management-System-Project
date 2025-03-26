package com.student_management_system.classes;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/studentlogin")
@SuppressWarnings("serial")
public class StudentLoginServlet extends HttpServlet
{
	@Override
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		String rollNo = req.getParameter("rollno");
		StudentBean sb = new StudentLoginDAO().retrieve(rollNo);
		
		if(sb==null)
		{
			req.setAttribute("msg", "Invalid Student Roll Number...<br>");
			req.getRequestDispatcher("StudentLoginFail.jsp").forward(req, res);
			
		}
		else {
			HttpSession hs = req.getSession();
			hs.setAttribute("sbean", sb);
			req.getRequestDispatcher("StudentAdmin.jsp").forward(req, res);
		}
	}
}
