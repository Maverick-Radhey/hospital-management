package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/admin_logout")
public class AdminLogout extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		try {
			HttpSession session=req.getSession();
			session.removeAttribute("adminObj");
			session.setAttribute("succMsg", "Admin Logout successfully.....");
			resp.sendRedirect("admin_login.jsp");
			System.err.println("Admin Logout successfully.....");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
	
}
