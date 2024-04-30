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

@WebServlet("/doctor_passwordChange")
public class DoctorPasswordChange extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int uid=Integer.parseInt(req.getParameter("uid"));
		String newPassword=req.getParameter("newPassword");
		String oldPassword=req.getParameter("oldPassword");
		
		
		DoctorDao dao=new DoctorDao(DBConnect.getConn());
		HttpSession session=req.getSession();
		
		if(dao.checkOldPassword(uid, oldPassword)) {
			if(dao.changePassword(uid, newPassword)) {
				
				session.setAttribute("succMsg", "Doctor - Password Change successfully...");
				resp.sendRedirect("doctor/edit_profile.jsp");
				System.out.println("Doctor - Password Change successfully...");
			}else {
				
				session.setAttribute("failedMsg", "something wrong on server.....");
				resp.sendRedirect("doctor/edit_profile.jsp");
				System.err.println("something wrong on server......");
			}
			
		}else {
			
			session.setAttribute("failedMsg", "Doctor - Old Password Incorrect...");
			resp.sendRedirect("doctor/edit_profile.jsp");
			System.err.println("Doctor - Old Password Incorrect...");
		}
	}

	
	
}
