package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;

@WebServlet("/delete_doctor")
public class DeleteDoctor extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			
		
			DoctorDao dao=new DoctorDao(DBConnect.getConn());
			HttpSession session=req.getSession();
			
			if(dao.deleteDoctor(id)) {
				
				session.setAttribute("succMsg", "Doctor delete successfully....");
				resp.sendRedirect("admin/view_doctor.jsp");
				System.out.println("Doctor delete successfully....");
			}else {
				
				session.setAttribute("failedMsg", "Somthing wrong on server.....");
				resp.sendRedirect("admin/view_doctor.jsp");
				System.err.println("Somthing wrong on server.....");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
