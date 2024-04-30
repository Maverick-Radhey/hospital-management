package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/user_logout")
public class UserLogout extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			HttpSession session=req.getSession();
			session.removeAttribute("userObj");
			session.setAttribute("succMsg", "User Logout Successfully...");
			resp.sendRedirect("user_login.jsp");
			System.err.println("User Logout successfully....");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
