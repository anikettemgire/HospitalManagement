package com.dao;
import java.sql.*;
import java.util.ArrayList;

import com.db.Jdbc;
import com.modal.Speciallist;
public class SpecialDao {
	
	public static boolean insertSpecailRecord(String sname) {
		Connection con=null;
		PreparedStatement ps=null;
		boolean f=false;
		try {
			String query="insert into special(name) values(?)";
			con=Jdbc.getConnect();
			ps=con.prepareStatement(query);
			ps.setString(1, sname);
			int i=ps.executeUpdate();
			if(i>0) {
				f=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
     public static ArrayList<Speciallist> fetchSpecaillist() {
    	 Connection con=null;
    	 PreparedStatement ps=null;
    	 ArrayList<Speciallist> al=new ArrayList<>();
    	 try {
    		 con=Jdbc.getConnect();
    		 String query="select * from special";
    		 ps=con.prepareStatement(query);
    		 ResultSet rs=ps.executeQuery();
    		 while(rs.next()) {
    			 int id=rs.getInt(1);
    			 String name=rs.getString(2);
    			 al.add(new Speciallist(id,name));
    			 
    		 }
    	 }catch(Exception e) {
    		 e.printStackTrace();
    	 }
    	 return al;
     }
     public static int countSpecial() {
 		Connection con=null;
 	 PreparedStatement ps=null;
 	     int i=0;
 	     try {
 	     con=Jdbc.getConnect();
 	     String query="select count(*) from special";
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
}
