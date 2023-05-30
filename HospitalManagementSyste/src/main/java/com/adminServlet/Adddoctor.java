package com.adminServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AddDoctorDao;
import com.modal.AddDoctor;

@WebServlet("/adddoctor")
public class Adddoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		   String a=req.getParameter("name");
		   String dob=req.getParameter("dob");
		   String quali=req.getParameter("quali");
		   String sp=req.getParameter("spcil");
		   String emil=req.getParameter("email");
		   String mob=req.getParameter("mobno");
		   String pass=req.getParameter("pass");
		   AddDoctor ad=new AddDoctor(a,dob,quali,sp,emil,mob,pass);
		   HttpSession s=req.getSession();
		 boolean f= AddDoctorDao.insertDoctor(ad);
		 if(f) {
			 s.setAttribute("msg", "Add Doctor Succesful");
			 res.sendRedirect("admis/doctor.jsp");
		 }else {
			 s.setAttribute("emsg", "Something Wrong");
			 res.sendRedirect("admis/doctor.jsp");
		 }
	}

}
