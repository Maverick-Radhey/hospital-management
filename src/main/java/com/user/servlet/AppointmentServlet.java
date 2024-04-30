package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDao;
import com.db.DBConnect;
import com.entity.Appointment;

@WebServlet("/add_appointment")
public class AppointmentServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int userId=Integer.parseInt(req.getParameter("userid"));
		
		String fullName=req.getParameter("fullName");
		String gender=req.getParameter("gender");
		String age=req.getParameter("age");
		String appointDate=req.getParameter("appointDate");
		String email=req.getParameter("email");
		String phone=req.getParameter("phone");
		String diseases=req.getParameter("diseases");
		int doctorId=Integer.parseInt(req.getParameter("doctorId"));
		String address=req.getParameter("address");
		
		
		Appointment ap = new Appointment( userId,  fullName,  gender,  age, appointDate,  email,
				 phone,  diseases,  doctorId,  address, "Pending" );
		
		AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
		HttpSession session =req.getSession();
		
		if(dao.addAppointment(ap)) {
			
			session.setAttribute("succMsg", "Appointment add successfully.....");
			resp.sendRedirect("user_appointment.jsp");
			System.out.println("Appointment add successfully.....");
		}else {
			session.setAttribute("failedMsg", "somthing wrong on server......");
			resp.sendRedirect("user_appointment.jsp");
			System.out.println("somthing wrong on server.....");
		}
		
	}

	
	
}
