package com.adminServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SpecialDao;

@WebServlet("/addspecilist")
public class AddSpeciallist extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		    String specil=req.getParameter("spec");
		    HttpSession s=req.getSession();
		    if(!specil.equals("")) {
		               boolean f=SpecialDao.insertSpecailRecord(specil);
		               
		               if(f) {
		            	   s.setAttribute("msg", "Add Speciallist SuccesFul");
		            	   res.sendRedirect("admis/index.jsp");
		               }else {
		            	   s.setAttribute("emsg", "Something Wrong");
		            	   res.sendRedirect("admis/index.jsp");
		               }
		    }
	}

}
