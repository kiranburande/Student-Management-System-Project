package com.student_management_system.classes;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/viewstudentmarks")
public class ViewStudentMarksServlet extends HttpServlet
{
	@SuppressWarnings("unused")
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException
	{
		HttpSession hs = req.getSession(false);
		StudentBean sb = (StudentBean) hs.getAttribute("sbean");
		MarksBean mb = new ViewStudentMarksDAO().retrieve(sb.getRollNo());
		if(mb==null)
		{
			req.setAttribute("msg", "Session Expierd...<br>");
			req.getRequestDispatcher("FailMsg.jsp").forward(req, res);
		}
		else {
			hs.setAttribute("mbean", mb);
			req.getRequestDispatcher("ViewStudentMarks.jsp").forward(req, res);
		}
	}
}
