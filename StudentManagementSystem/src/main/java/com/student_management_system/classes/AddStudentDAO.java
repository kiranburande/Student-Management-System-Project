package com.student_management_system.classes;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AddStudentDAO 
{
	public int insertStudent(StudentBean sb)
	{
		int k=0;
		try {
			Connection con  = DBConnection.getCon();
			PreparedStatement ps1 = con.prepareStatement("INSERT INTO STUDENT100 VALUES(?,?,?,?,?,?)");
			PreparedStatement ps2 = con.prepareStatement("INSERT INTO MARKS100 VALUES(?,?,?,?,?,?)");
			
			ps1.setString(1, sb.getRollNo());
			ps1.setString(2, sb.getName());
			ps1.setString(3, sb.getCourse());
			ps1.setInt(4, sb.getTotMarks());
			ps1.setFloat(5, sb.getPer());
			ps1.setString(6, sb.getResult());
			int p = ps1.executeUpdate();
			if(p>0)
			{
				ps2.setString(1, sb.getRollNo());
				ps2.setInt(2, sb.getMk().getCoreJava());
				ps2.setInt(3, sb.getMk().getAdvJava());
				ps2.setInt(4, sb.getMk().getUi());
				ps2.setInt(5, sb.getMk().getDb());
				ps2.setInt(6, sb.getMk().getTools());
				k = ps2.executeUpdate();
			}
			
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return k;
	}

}
