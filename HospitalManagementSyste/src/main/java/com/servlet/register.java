package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.modal.User;

@WebServlet("/Register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	       String name=req.getParameter("name");
	       String email=req.getParameter("email");
	       String pass=req.getParameter("pass");
	       String cpass=req.getParameter("cpass");
	       HttpSession s=req.getSession();
	       if(pass.equals(cpass)) {
	  
	       if((!name.equals(""))&& (!email.equals("")) &&(!pass.equals(""))){
	       User u=new User(name,email,pass);
	               boolean f=UserDao.UserInsertRecord(u);
	              
	               if(f) {
	            	        s.setAttribute("msg", "Register SuccessFul....");
	            	        res.sendRedirect("sign_up.jsp");
	               }else {
	            	   s.setAttribute("emsg", "Something Wrong");
	            	   res.sendRedirect("sign_up.jsp");
	            	   
	               }
	       }else {
	    	   s.setAttribute("emsg", "Something Missing...");
        	   res.sendRedirect("sign_up.jsp");
	       }
	       }else {
	    	   s.setAttribute("emsg", "Password Not Match");
        	   res.sendRedirect("sign_up.jsp");
	       }
	}

}
