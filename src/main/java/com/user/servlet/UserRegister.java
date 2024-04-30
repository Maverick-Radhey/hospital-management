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
import com.entity.User;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
			String fullName=req.getParameter("fullName");
			String email=req.getParameter("email");
			String phone=req.getParameter("phone");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
			
			User u=new User(fullName, email, phone, password);
			
			
			System.out.println(fullName+""+email+""+phone+""+password+""+check);
			
			
			u.setFullName(fullName);
			u.setEmail(email);
			u.setPhone(phone);
			u.setPassword(password);
			
			HttpSession session=req.getSession();
			
			
			
			if(check !=null) {
				UserDao dao=new UserDao(DBConnect.getConn());
				boolean f2=dao.userCheck(email);
				
				if(f2) {
					boolean f=dao.userRegister(u);
				
				if(f) {
				session.setAttribute("succMsg","Registration successfully...");
					resp.sendRedirect("user_login.jsp");
					System.out.println("Registration successfully....");
					
				}else {
					session.setAttribute("failedMsg","Somthing wrong on server");
					resp.sendRedirect("register.jsp");
					System.err.println("Somthing wrong on server...");
				}
				}else {
					session.setAttribute("failedMsg","User Allready exist...plzzz try another Email id........");
					resp.sendRedirect("register.jsp");
					System.err.println("User Allready exist...plzzz try another Email id........");
				}
				}else {
					System.err.println(" Plzz check Agree terms & Condition.....");
					session.setAttribute("failedMsg"," Plzz check Agree terms & Condition.....");
					resp.sendRedirect("register.jsp");
					System.err.println(" Plzz check Agree terms & Condition.....");
				     }
				
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	
}
