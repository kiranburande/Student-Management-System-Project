package com.student_management_system.classes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ViewStudentMarksDAO 
{
	MarksBean bean =null;
	@SuppressWarnings("unused")
	public MarksBean retrieve(String rollNo)
	{
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM MARKS100 WHERE ROLLNO =?");
			ps.setString(1, rollNo);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				bean  = new MarksBean();
				bean.setCoreJava(rs.getInt(2));
				bean.setAdvJava(rs.getInt(3));
				bean.setUi(rs.getInt(4));
				bean.setDb(rs.getInt(5));
				bean.setTools(rs.getInt(6));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return bean;
	}
}
