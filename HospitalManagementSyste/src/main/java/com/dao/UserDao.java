package com.dao;
import java.sql.*;
import java.util.ArrayList;

import com.db.Jdbc;
import com.modal.User;
public class UserDao {
	
	public static boolean UserInsertRecord(User u) {
		Connection con=null;
		PreparedStatement ps=null;
		boolean f=false;
		try {
			con=Jdbc.getConnect();
			String query="insert into user(name,email,password) values(?,?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPass());
			int i=ps.executeUpdate();
			if(i>0) {
				f=true;
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
		
	}
	public static User userLogin(String em,String pa) {
		Connection con=null;
		PreparedStatement ps=null;
		User u=null;
		try {
			con=Jdbc.getConnect();
			String query="select * from user where email=? and password=?";
			ps=con.prepareStatement(query);
			ps.setString(1, em);
			ps.setString(2, pa);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			int a=rs.getInt(1);
			String b=rs.getString(2);
			String c=rs.getString(3);
			String d=rs.getString(4);
			u=new User(a,b,c,d);
			
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return u;
	}
	 public static int countUser() {
	 		Connection con=null;
	 	 PreparedStatement ps=null;
	 	     int i=0;
	 	     try {
	 	     con=Jdbc.getConnect();
	 	     String query="select count(*) from user";
	 	     ps=con.prepareStatement(query);
	 	     ResultSet rs=ps.executeQuery();
	 	     while(rs.next()) {
	 	    	  i=rs.getInt(1);
	 	     }
	 	    
	 	     }catch(Exception e) {
	 	    	 e.printStackTrace();
	 	     }
	 	     return i;
	 	}
	 public static boolean checkPass(int id,String pass) {
		 Connection con=null;
		 PreparedStatement ps=null;
		 boolean f=false;
		 try {
			 con=Jdbc.getConnect();
			 String query="select * from user where id=? and password=?";
			 ps=con.prepareStatement(query);
			 ps.setInt(1, id);
			 ps.setString(2, pass);
			 ResultSet rs=ps.executeQuery();
			 while(rs.next()) {
				  f=true;
			 }
			
			 
		 }catch(Exception e) {
			 System.out.println(e);
		 }
		 return f;
	 }
	 public static boolean UpdatePass(int id,String pass) {
		 Connection con=null;
		 PreparedStatement ps=null;
		 boolean f=false;
		 try {
			 con=Jdbc.getConnect();
			 String query="update user set password=? where id=?";
			 ps=con.prepareStatement(query);
			 ps.setString(1, pass);
			 ps.setInt(2, id);
		    int i=ps.executeUpdate();
		    if(i>0) {
		    	f=true;
		    }
			
			
			 
		 }catch(Exception e) {
			 System.out.println(e);
		 }
		 return f;
	 }

}
