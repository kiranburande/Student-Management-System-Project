package com.student_management_system.classes;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/adminlogin")
public class AdminLoginServlet extends HttpServlet
{
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException
	{
		String uName = req.getParameter("uname");
		String pWord = req.getParameter("pword");
		AdminBean ab = new AdminLoginDAO().login(uName, pWord);
		
		if(ab==null)
		{
			req.setAttribute("msg","Invalid Login Process...<br>" );
			req.getRequestDispatcher("FailMsg.jsp").forward(req, res);
		}
		else {
			HttpSession hs = req.getSession();// creating new session
			hs.setAttribute("abean", ab);  // AdminBean is added to session
			req.getRequestDispatcher("AdminLoginSuccess.jsp").forward(req, res);
		}
	}
}
