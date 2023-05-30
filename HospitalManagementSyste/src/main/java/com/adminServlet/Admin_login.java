package com.adminServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modal.User;

@WebServlet("/admin")
public class Admin_login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		  String email=req.getParameter("email");
		  String pass=req.getParameter("pass");
		  HttpSession s=req.getSession();
		  if(email.equals("aniket123@gmail.com") && pass.equals("aniket123")) {
			  s.setAttribute("adminObj", new User());
			  res.sendRedirect("admis/index.jsp");
		  }else {
			  s.setAttribute("emsg", "invalid email & pass");
			  res.sendRedirect("admis_login.jsp");
		  }
		
	}

}
