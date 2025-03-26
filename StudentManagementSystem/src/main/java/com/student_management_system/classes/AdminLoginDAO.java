package com.student_management_system.classes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminLoginDAO 
{
	private AdminBean bean =null;
	
	public AdminBean login(String uName, String pWord)
	{
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM ADMIN100 WHERE UNAME=? AND PWORD=?");
			ps.setString(1, uName);
			ps.setString(2, pWord);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				bean = new AdminBean();
				bean.setuName(rs.getString(1));
				bean.setpWord(rs.getString(2));
				bean.setfName(rs.getString(3));
				bean.setlName(rs.getString(4));
				bean.setCity(rs.getString(5));
				bean.setmId(rs.getString(7));
				bean.setPhNo(rs.getLong(7));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return bean;
	}

}
