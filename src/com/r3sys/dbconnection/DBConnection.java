package com.r3sys.dbconnection;

import java.sql.*;

public class DBConnection {
	public static Connection con = null;
	public static Connection dbCon()
	{
		try
		{
			if(con == null)
			{
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/appoint_db","root","");
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
	

}
