package com.doctorServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AddDoctorDao;
import com.modal.AddDoctor;

@WebServlet("/doctorlogin")
public class LoginDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		AddDoctor s= AddDoctorDao.fetchDoctarDetail(email, pass);
		HttpSession h=req.getSession();
		if(s!=null) {
			h.setAttribute("doctorObj", s);
			res.sendRedirect("doctor/index.jsp");
		}else {
			h.setAttribute("emsg", "invalid email & password");
			res.sendRedirect("doctor_login.jsp");
		}
		
	}

}
