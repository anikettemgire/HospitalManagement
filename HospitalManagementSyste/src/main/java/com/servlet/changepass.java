package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;

@WebServlet("/changePass")
public class changepass extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String op=req.getParameter("opass");
		String np=req.getParameter("npass");
		String ncp=req.getParameter("ncpass");
		int uid= Integer.parseInt( req.getParameter("uid"));
		
		HttpSession s=req.getSession();
		if(np.equals(ncp)) {
			 if(UserDao.checkPass(uid, op)) {
				  if(UserDao.UpdatePass(uid, np)) {
					  s.setAttribute("msg", "Password Update Succesful..");
					  res.sendRedirect("changepass.jsp");
					  
				  }else {
					  s.setAttribute("emsg", "something wrong..");
				  }
				 
			 }else {
				 s.setAttribute("emsg", "Old password is not match");
					res.sendRedirect("changepass.jsp");
			 }
			
		}else {
			s.setAttribute("emsg", "confim password is not match");
			res.sendRedirect("changepass.jsp");
		}
	}

}
