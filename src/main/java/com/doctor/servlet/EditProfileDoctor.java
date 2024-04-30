package com.doctor.servlet;

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

@WebServlet("/doctor_updateProfile")
public class EditProfileDoctor extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String fullName=req.getParameter("fullName");
			String dob=req.getParameter("dob");
			String qualification=req.getParameter("qualification");
			String specalist=req.getParameter("specalist");
			String email=req.getParameter("email");
			String phone=req.getParameter("phone");
			
			
			int id=Integer.parseInt(req.getParameter("id"));
			
			Doctor d=new Doctor(id,fullName,dob,qualification,specalist,email,phone,"");
			DoctorDao dao=new DoctorDao(DBConnect.getConn());
			HttpSession session=req.getSession();
			
			if(dao.editDoctorProfile(d)) {
				
				session.setAttribute("succMsg", "Doctor Profile update successfully....");
				resp.sendRedirect("doctor/edit_profile.jsp");
				System.out.println("Doctor Profile update successfully....");
			}else {
				
				session.setAttribute("failedMsg", "Somthing wrong on server.....");
				resp.sendRedirect("doctor/edit_profile.jsp");
				System.err.println("Somthing wrong on server.....");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
	
}
