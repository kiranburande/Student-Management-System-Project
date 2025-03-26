package com.student_management_system.classes;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/addstudent")
public class AddStudentServlet extends HttpServlet
{
	@Override
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		HttpSession hs = req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg", "Session Expired...<br>");
			req.getRequestDispatcher("FailMsg.jsp").forward(req, res);
		}
		else {
			StudentBean sb = new StudentBean();
			sb.setRollNo(req.getParameter("rollno"));
			sb.setName(req.getParameter("name"));
			sb.setCourse(req.getParameter("course"));
			int cj = Integer.parseInt(req.getParameter("cjava"));
			int aj = Integer.parseInt(req.getParameter("ajava"));
			int ui = Integer.parseInt(req.getParameter("ui"));
			int db = Integer.parseInt(req.getParameter("db"));
			int tools = Integer.parseInt(req.getParameter("tools"));
			int totMarks = cj+aj+ui+db+tools;
			float per = (float)totMarks/5;
			String result = null;
			if(per<=100 && per>=70) result="A";
			else if(per>=60) result = "B";
			else if(per>=50) result = "C";
			else if(per>=40) result ="D";
			else result = "F";
			sb.setTotMarks(totMarks);
			sb.setPer(per);
			sb.setResult(result);
			sb.getMk().setCoreJava(cj);
			sb.getMk().setAdvJava(aj);
			sb.getMk().setUi(ui);
			sb.getMk().setDb(db);			
			sb.getMk().setTools(tools);
			int k = new AddStudentDAO().insertStudent(sb);
			if(k > 0)
			{
				req.setAttribute("msg", "Student Added Successfully...<br>");
				req.getRequestDispatcher("AddStudent.jsp").forward(req, res);
			}
		}
	}
}
