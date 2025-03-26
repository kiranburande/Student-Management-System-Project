package com.student_management_system.classes;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@SuppressWarnings("serial")
@WebServlet("/viewm")
public class ViewMarksServlet extends HttpServlet
{
	@SuppressWarnings({ "unchecked", "unused" })
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession hs = req.getSession();
		if(hs==null)
		{
			req.setAttribute("msg","Session Expired...<br>");
			req.getRequestDispatcher("FailMsg.jsp").forward(req, res);
		}
		else {
			ArrayList<StudentBean> list = (ArrayList<StudentBean>)hs.getAttribute("alist");
			String rNo = req.getParameter("rollno"); 
			Iterator<StudentBean> itr = list.iterator();
			while(itr.hasNext())
			{
				StudentBean sb =(StudentBean)itr.next();
				if(rNo.equals(sb.getRollNo()))
				{
					req.setAttribute("sbean", sb);
					req.getRequestDispatcher("ViewMarks.jsp").forward(req, res);
					break;
				}
			}
			
		}
	}
}
