package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/doctor_logout")
public class DoctorLogout extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			HttpSession session=req.getSession();
			session.removeAttribute("doctObj");
			session.setAttribute("succMsg", "Doctor Logout successfully.....");
			resp.sendRedirect("docter_login.jsp");
			System.err.println("Doctor Logout successfully.....");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	

	
}
