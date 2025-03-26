package com.student_management_system.classes;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateMarksDAO 
{
	public int k=0;
	public int update(StudentBean sb)
	{
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("UPDATE MARKS100 SET COREJAVA=?,ADVJAVA=?,UI=?,DB=?,TOOLS=? WHERE ROLLNO=?");
			PreparedStatement ps2 = con.prepareStatement("UPDATE STUDENT100 SET TOTMARKS=?,PER=?,RESULT=? WHERE ROLLNO=?");
			ps.setInt(1, sb.getMk().getCoreJava());
			ps.setInt(2, sb.getMk().getAdvJava());
			ps.setInt(3, sb.getMk().getUi());
			ps.setInt(4, sb.getMk().getDb());
			ps.setInt(5, sb.getMk().getTools());
			ps.setString(6, sb.getRollNo());
			int totMarks = sb.getMk().getCoreJava()+sb.getMk().getAdvJava()+sb.getMk().getUi()+sb.getMk().getDb()+sb.getMk().getTools();
			float per = (float)totMarks/5;
			String result = null;
			if(per<=100 && per>=70) result="A";
			else if(per>=60) result = "B";
			else if(per>=50) result = "C";
			else if(per>=40) result ="D";
			else result = "F";
			ps2.setInt(1, totMarks);
			ps2.setFloat(2, per);
			ps2.setString(3, result);
			ps2.setString(4, sb.getRollNo());
			int j = ps2.executeUpdate();
			if(j>0)
			{
				k = ps.executeUpdate();
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
	}
}
