package com.student_management_system.classes;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection 
{
	private DBConnection() {}
	private static Connection con =null;
	
	static {
		try {
			Class.forName(DBInfo.driver);
			con = DriverManager.getConnection(DBInfo.dbURL, DBInfo.dbUName, DBInfo.dbPWord);
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public static Connection getCon()
	{
		return con;
	}
}
