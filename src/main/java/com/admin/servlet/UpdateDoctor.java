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

@WebServlet("/update_doctor")
public class UpdateDoctor extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String fullName=req.getParameter("fullName");
			String dob=req.getParameter("dob");
			String qualification=req.getParameter("qualification");
			String specalist=req.getParameter("specalist");
			String email=req.getParameter("email");
			String phone=req.getParameter("phone");
			String password=req.getParameter("password");
			
			int id=Integer.parseInt(req.getParameter("id"));
			
			Doctor d=new Doctor(id,fullName,dob,qualification,specalist,email,phone,password);
			DoctorDao dao=new DoctorDao(DBConnect.getConn());
			HttpSession session=req.getSession();
			
			if(dao.updaterDoctor(d)) {
				
				session.setAttribute("succMsg", "Doctor update successfully....");
				resp.sendRedirect("admin/view_doctor.jsp");
				System.out.println("Doctor update successfully....");
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
