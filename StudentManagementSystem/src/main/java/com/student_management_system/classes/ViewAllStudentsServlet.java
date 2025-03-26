package com.student_management_system.classes;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/view")
public class ViewAllStudentsServlet extends HttpServlet
{
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
   {
		HttpSession hs = req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("FailMsg.jsp", "Session Expired...<br>");
			req.getRequestDispatcher("FailMsg.jsp").forward(req, res);
		}
		else {
			ArrayList<StudentBean> list = new ViewAllStudentDAO().retrieveAllStudent();
			hs.setAttribute("alist", list);
			req.getRequestDispatcher("ViewAllStudents.jsp").forward(req, res);
		}
   }

}
