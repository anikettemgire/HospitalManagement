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

@WebServlet("/delete")
public class DeleteDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		   int id=Integer.parseInt(req.getParameter("id"));
		            boolean f=AddDoctorDao.deletRecord(id);
		            HttpSession s=req.getSession();
		            if(f) {
		            	s.setAttribute("msg", "Delete Doctor Succesful");
		            	res.sendRedirect("admis/view_doctor.jsp");
		            }else {
		            	s.setAttribute("emsg", "Delete Doctor Succesful");
		            	res.sendRedirect("admis/view_doctor.jsp");
		            }
	}


}
