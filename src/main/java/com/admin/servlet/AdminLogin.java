package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/admin_login")
public class AdminLogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			UserDao dao=new UserDao(DBConnect.getConn());
			
			HttpSession session=req.getSession();
			
			if("Maverick@gmail.com".equals(email) && "123456".equals(password)){
				session.setAttribute("adminObj", new User());
				resp.sendRedirect("admin/index.jsp");
				System.out.println("Admin login successfully.....");
			}else {
				session.setAttribute("failedMsg", "invalid email & password");
				resp.sendRedirect("admin_login.jsp");
				System.err.println("Somthing wrong on server.....");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
