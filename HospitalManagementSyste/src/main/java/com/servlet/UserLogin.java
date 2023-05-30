package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.modal.User;

@WebServlet("/userlogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String email=req.getParameter("email");
	    String pass=req.getParameter("pass");
	    User u=UserDao.userLogin(email, pass);
	    HttpSession s=req.getSession();
	    if(u!=null) {
	    	s.setAttribute("userObj", u);
	    	res.sendRedirect("index.jsp");
	    }else {
	    	s.setAttribute("error", "Invalid Mail And Password..");
	    	res.sendRedirect("User_login.jsp");
	    	
	    	
	    }
	                  
		
	}

}
