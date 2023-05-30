package com.doctorServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppoDao;

@WebServlet("/cmment")
public class Cooment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	
		 int did=Integer.parseInt(req.getParameter("did"));
		 int uid=Integer.parseInt(req.getParameter("uid"));
		 String name=req.getParameter("name");
		  String com=req.getParameter("com");
		  HttpSession s=req.getSession();
		               boolean f= AppoDao.Updatestaus(did, uid, com,name);
		               if(f) {
		            	   s.setAttribute("msg", "Status Update Succesfull..");
		            	   res.sendRedirect("doctor/paitnet.jsp");
		               }else {
		            	   s.setAttribute("emsg", "Something Wrong");
		            	   res.sendRedirect("doctor/paitnet.jsp");
		               }
	}

}
