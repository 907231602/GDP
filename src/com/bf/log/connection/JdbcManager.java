package com.bf.log.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcManager {
	public static Connection getConnection() {
		// TODO Auto-generated method stub
		Connection con=null;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
//		/	Driver
			//con=DriverManager.getConnection(conf.get("url"), conf.get("username"), conf.get("userpwd"));
			 con=DriverManager.getConnection("jdbc:mysql://192.168.0.123:3306/yy?useSSL=false", "root", "root");
			// con.setAutoCommit(false);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println("con=="+con);
		return con;
	}
}
