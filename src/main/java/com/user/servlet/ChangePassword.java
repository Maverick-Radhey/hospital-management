package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DBConnect;

@WebServlet("/change_password")
public class ChangePassword extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		int uid=Integer.parseInt(req.getParameter("uid"));
		String newPassword=req.getParameter("newPassword");
		String oldPassword=req.getParameter("oldPassword");
		
		
		UserDao dao=new UserDao(DBConnect.getConn());
		HttpSession session=req.getSession();
		
		if(dao.checkOldPassword(uid, oldPassword)) {
			if(dao.changePassword(uid, newPassword)) {
				
				session.setAttribute("succMsg", "Password Change successfully...");
				resp.sendRedirect("change_password.jsp");
				System.out.println("Password Change successfully...");
			}else {
				
				session.setAttribute("failedMsg", "something wrong on server.....");
				resp.sendRedirect("change_password.jsp");
				System.err.println("something wrong on server......");
			}
			
		}else {
			
			session.setAttribute("failedMsg", "Old Password Incorrect...");
			resp.sendRedirect("change_password.jsp");
			System.err.println("Old Password Incorrect...");
		}
	}

	
	
}
