package com.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.db.Jdbc;
import com.modal.AddDoctor;
public class AddDoctorDao {

	public static boolean insertDoctor(AddDoctor ad) {
		Connection con=null;
		PreparedStatement ps=null;
		boolean f=false;
		try {
			String query="insert into doctor(dname,dob,quali,spcail,email,mobno,password)values(?,?,?,?,?,?,?)";
			con=Jdbc.getConnect();
			ps=con.prepareStatement(query);
			ps.setString(1, ad.getName());
			ps.setString(2, ad.getDob());
			ps.setString(3, ad.getQuali());
			ps.setString(4, ad.getSpecil());
			ps.setString(5, ad.getEmail());
			ps.setString(6, ad.getMobno());
			ps.setString(7, ad.getPass());
			int i=ps.executeUpdate();
			if(i>0) {
				f=true;
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
		
	}
	public static ArrayList<AddDoctor> fetchDoctor() {
		Connection con=null;
		PreparedStatement ps=null;
		ArrayList<AddDoctor> al=new ArrayList<>();
		try {
			con=Jdbc.getConnect();
			String query="select * from doctor order by id desc";
			ps=con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				int i=rs.getInt(1);
				String n=rs.getString(2);
				String d=rs.getString(3);
				String q=rs.getString(4);
				String s=rs.getString(5);
				String em=rs.getString(6);
				String mo=rs.getString(7);
				String pa=rs.getString(8);
				al.add(new AddDoctor(i,n,d,q,s,em,mo,pa));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return al;
	}
	public static AddDoctor getDoctorById(int id) {
		Connection con=null;
		PreparedStatement ps=null;
		  AddDoctor s=null;
		try {
			String query ="select * from doctor where id=?";
			con=Jdbc.getConnect();
			ps=con.prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				s=new AddDoctor();
			    s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setDob(rs.getString(3));
				s.setQuali(rs.getString(4)); 
				s.setSpecil(rs.getString(5)); 
				s.setEmail(rs.getString(6)); 
				s.setMobno(rs.getString(7));
				s.setPass(rs.getString(8));
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return s;
	}
	public static boolean updateDoctor(AddDoctor ad) {
		Connection con=null;
		PreparedStatement ps=null;
		boolean f=false;
		try {
			con=Jdbc.getConnect();
			String query="update doctor set dname=?,dob=?,quali=?,spcail=?,email=?,mobno=? where id=?";
			ps=con.prepareStatement(query);
			ps.setString(1, ad.getName());
			ps.setString(2, ad.getDob());
			ps.setString(3, ad.getQuali());
			ps.setString(4, ad.getSpecil());
			ps.setString(5, ad.getEmail());
			ps.setString(6, ad.getMobno());
		
			ps.setInt(7, ad.getId());
			int i=ps.executeUpdate();
			if(i>0) {
				f=true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public static boolean deletRecord(int id) {
		Connection con=null;
		PreparedStatement ps=null;
		boolean f=false;
		try {
			con=Jdbc.getConnect();
			String query="delete from doctor where id=?";
			ps=con.prepareStatement(query);
			ps.setInt(1, id);
			int i=ps.executeUpdate();
			if(i>0) {
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public static AddDoctor fetchDoctarDetail(String email,String pass) {
		Connection con=null;
		PreparedStatement ps=null;
		AddDoctor s=null;
		try {
			con=Jdbc.getConnect();
			String query="select * from doctor where email=? and password=?";
			ps=con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, pass);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				s=new AddDoctor();
			    s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setDob(rs.getString(3));
				s.setQuali(rs.getString(4)); 
				s.setSpecil(rs.getString(5)); 
				s.setEmail(rs.getString(6)); 
				s.setMobno(rs.getString(7));
				s.setPass(rs.getString(8));
				
				
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return s;
	}
	
	public static int countDoctor() {
		Connection con=null;
	 PreparedStatement ps=null;
	     int i=0;
	     try {
	     con=Jdbc.getConnect();
	     String query="select count(*) from doctor";
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
	public static boolean updateDoctorByDoctor(AddDoctor ad) {
		Connection con=null;
		PreparedStatement ps=null;
		boolean f=false;
		try {
			con=Jdbc.getConnect();
			String query="update doctor set dname=?,dob=?,quali=?,spcail=?,email=?,mobno=? where id=?";
			ps=con.prepareStatement(query);
			ps.setString(1, ad.getName());
			ps.setString(2, ad.getDob());
			ps.setString(3, ad.getQuali());
			ps.setString(4, ad.getSpecil());
			ps.setString(5, ad.getEmail());
			ps.setString(6, ad.getMobno());
		
			ps.setInt(7, ad.getId());
			int i=ps.executeUpdate();
			if(i>0) {
				f=true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}
