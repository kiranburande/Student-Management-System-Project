package com.student_management_system.classes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class StudentLoginDAO 
{
	private StudentBean sb=null;
	public StudentBean retrieve(String rollNo)
	{
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM STUDENT100 WHERE ROLLNO =?");
			ps.setString(1, rollNo);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
				sb = new StudentBean();
				sb.setRollNo(rs.getString(1));
				sb.setName(rs.getString(2));
				sb.setCourse(rs.getString(3));
				sb.setTotMarks(rs.getInt(4));
				sb.setPer(rs.getFloat(5));
				sb.setResult(rs.getString(6));
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return sb;
				
	}
}
