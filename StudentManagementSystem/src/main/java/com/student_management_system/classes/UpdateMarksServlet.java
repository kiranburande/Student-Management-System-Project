package com.student_management_system.classes;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/update")
public class UpdateMarksServlet extends HttpServlet
{
	@SuppressWarnings({ "unused", "unchecked" })
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException
	{
		HttpSession hs = req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg", "Session Expired...<br>");
			req.getRequestDispatcher("FailMsg.jsp").forward(req, res);
		}
		else {
			ArrayList<StudentBean> list = (ArrayList<StudentBean>) hs.getAttribute("alist");
			String rNo = req.getParameter("rollno");
			Iterator<StudentBean> itr = list.iterator();
			while(itr.hasNext())
			{
				StudentBean sb = itr.next();
				if(rNo.equals(sb.getRollNo()))
				{
					sb.getMk().setCoreJava(Integer.parseInt(req.getParameter("corejava")));
					sb.getMk().setAdvJava(Integer.parseInt(req.getParameter("advjava")));
					sb.getMk().setUi(Integer.parseInt(req.getParameter("ui")));
					sb.getMk().setDb(Integer.parseInt(req.getParameter("db")));
					sb.getMk().setTools(Integer.parseInt(req.getParameter("tools")));
					
					int k = new UpdateMarksDAO().update(sb);
					if(k>0)
					{
						
						req.setAttribute("msg", "Marks Updated...<br>");
						req.getRequestDispatcher("UpdateMarks.jsp").forward(req, res);
					}
				}// end of if
			}//end of loop
		}
	}
}
