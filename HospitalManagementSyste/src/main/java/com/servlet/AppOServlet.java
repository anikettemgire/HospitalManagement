package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppoDao;
import com.modal.AppO;

@WebServlet("/Appo")
public class AppOServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		  
		int uid=Integer.parseInt(req.getParameter("userId"));
		String name=req.getParameter("name");
		String gender=req.getParameter("gender");
		String age=req.getParameter("age");
		String apdate=req.getParameter("date");
		String email=req.getParameter("email");
		String phon=req.getParameter("phone");
		String des=req.getParameter("diases");
		
		int did=Integer.parseInt(req.getParameter("doc"));
		String adress=req.getParameter("adress");
		HttpSession s=req.getSession();
		AppO a=new AppO(uid,name,gender,age,apdate,email,phon,des,did,adress,"pending");
		               boolean f= AppoDao.insertRecordApp(a);
		               if(f) {
		            	   s.setAttribute("msg", "Appotiment Add SuccesFull");
		            	   res.sendRedirect("User_appoiment.jsp");
		               }else {
		            	   s.setAttribute("emsg", "Something Worng Server");
		            	   res.sendRedirect("User_appoiment.jsp");
		               }
		
	}

}
