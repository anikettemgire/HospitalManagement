package com.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.db.Jdbc;
import com.modal.AppO;


public class AppoDao {
	
	public static boolean insertRecordApp(	AppO a) {
		Connection con=null;
		PreparedStatement ps=null;
		boolean f=false;
		try {
			con=Jdbc.getConnect();
			String query="insert into app(uid ,name, gender,age,apdate,email,phon,dises,did,adres,stus)values(?,?,?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(query);
			ps.setInt(1, a.getUser_id());
			ps.setString(2, a.getFullname());
			ps.setString(3, a.getGender());
			ps.setString(4, a.getAge());
			ps.setString(5, a.getAppDate());
			ps.setString(6, a.getEmail());
			ps.setString(7,a.getPhone());
			ps.setString(8,a.getDesies());
			ps.setInt(9, a.getDoctorId());
			ps.setString(10, a.getAdress());
			ps.setString(11, a.getStatus());
			int i=ps.executeUpdate();
			if(i>0) {
				f=true;
			}

			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
		
	}
	public static ArrayList<AppO> getApponiment(int id) {
		Connection con=null;
		PreparedStatement ps=null;
		ArrayList<AppO> al=new ArrayList<>();
		try {
			String query="select * from app where uid=?";
			con=Jdbc.getConnect();
			ps=con.prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				int i=rs.getInt(1);
				int uid=rs.getInt(2);
				String name=rs.getString(3);
				String gender=rs.getString(4);
				String age=rs.getString(5);
				String ad=rs.getString(6);
				String em=rs.getString(7);
				String ph=rs.getString(8);
				String de=rs.getString(9);
				int di=rs.getInt(10);
				String adr=rs.getString(11);
				String st=rs.getString(12);
				
				al.add(new AppO(i,uid,name,gender,age,ad,em,ph,de,di,adr,st));
				
			}
		}catch(Exception e) {
			
		}
		return al;
	}
	public static List<AppO> getDoctorLoginIfo(int id) {
		Connection con=null;
		PreparedStatement ps=null;
		List<AppO> l=new ArrayList<>();
		try {
			con=Jdbc.getConnect();
			String query="select * from app where did=?";
			ps=con.prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				int a=rs.getInt(1);
				int b=rs.getInt(2);
				String name=rs.getString(3);
				String gender=rs.getString(4);
				String age=rs.getString(5);
				String ad=rs.getString(6);
				String em=rs.getString(7);
				String ph=rs.getString(8);
				String de=rs.getString(9);
				int di=rs.getInt(10);
				String adr=rs.getString(11);
				String st=rs.getString(12);
				l.add (new AppO(a,b,name,gender,age,ad,em,ph,de,di,adr,st));
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return l;
		
	}
	public static List<AppO> getAppomineInfoById(int id) {
		Connection con=null;
		PreparedStatement ps=null;
		List<AppO> li=new ArrayList<>();
	    try {
	    	con=Jdbc.getConnect();
	    	String query="select * from app where id=?";
	    	ps=con.prepareStatement(query);
	    	ps.setInt(1, id);
	    	ResultSet rs=ps.executeQuery();
	    	while(rs.next()) {
	    		
	    		int a=rs.getInt(1);
				int b=rs.getInt(2);
				String name=rs.getString(3);
				String gender=rs.getString(4);
				String age=rs.getString(5);
				String ad=rs.getString(6);
				String em=rs.getString(7);
				String ph=rs.getString(8);
				String de=rs.getString(9);
				int di=rs.getInt(10);
				String adr=rs.getString(11);
				String st=rs.getString(12);
				li.add (new AppO(a,b,name,gender,age,ad,em,ph,de,di,adr,st));
	    		
	    	}
	    	
	    }catch(Exception e) {
	    	
	    }
	    return li;
	}
	public static boolean Updatestaus(int did,int uid,String com,String name) {
		Connection con=null;
		PreparedStatement ps=null;
		boolean f=false;
		try {
			con=Jdbc.getConnect();
			String query="update app set stus=? where did=? and uid=? and name=?";
			ps=con.prepareStatement(query);
			ps.setString(1, com);
			ps.setInt(2, did);
			ps.setInt(3, uid);
			ps.setString(4, name);
			int i=ps.executeUpdate();
			if(i>0) {
				f=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public static List<AppO> getAllData() {
		Connection con=null;
		PreparedStatement ps=null;
		List<AppO> s=new ArrayList<>();
		try {
			con=Jdbc.getConnect();
			String query="select * from app order by id desc";
			ps=con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				int a=rs.getInt(1);
				int b=rs.getInt(2);
				String name=rs.getString(3);
				String gender=rs.getString(4);
				String age=rs.getString(5);
				String ad=rs.getString(6);
				String em=rs.getString(7);
				String ph=rs.getString(8);
				String de=rs.getString(9);
				int di=rs.getInt(10);
				String adr=rs.getString(11);
				String st=rs.getString(12);
				s.add (new AppO(a,b,name,gender,age,ad,em,ph,de,di,adr,st));
				
			}
				
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return s;
	
	}
	public static int countApp() {
		Connection con=null;
	 PreparedStatement ps=null;
	     int i=0;
	     try {
	     con=Jdbc.getConnect();
	     String query="select count(*) from app";
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
	public static int countAppDoctorId(int id) {
		Connection con=null;
	 PreparedStatement ps=null;
	     int i=0;
	     try {
	     con=Jdbc.getConnect();
	     String query="select count(*) from app where did=?";
	     ps=con.prepareStatement(query);
	     ps.setInt(1, id);
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
