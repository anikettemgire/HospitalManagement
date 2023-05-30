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

@WebServlet("/update")
public class UpdateDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	       int id=Integer.parseInt(req.getParameter("id"));
		 String a=req.getParameter("name");
		   String dob=req.getParameter("dob");
		   String quali=req.getParameter("quali");
		   String sp=req.getParameter("spcil");
		   String emil=req.getParameter("email");
		   String mob=req.getParameter("mobno");
		   AddDoctor ad=new AddDoctor(id,a,dob,quali,sp,emil,mob);
		                 boolean f=AddDoctorDao.updateDoctor(ad);
		                 HttpSession s=req.getSession();
		                 if(f) {
		                	 s.setAttribute("msg", "Update Succesful..");
		                	res.sendRedirect("admis/view_doctor.jsp");
		                 }else {
		                	 s.setAttribute("emsg", "Not Update Ples Chek..");
			                	res.sendRedirect("admis/view_doctor.jsp");
		                 }
	}

}
