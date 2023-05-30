package com.db;
import java.sql.*;
public class Jdbc {
	
	 public static Connection getConnect() {
			Connection con=null;
		 try {
		Class.forName("com.mysql.jdbc.Driver");
	
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		 return con;
		
		
	}

}
