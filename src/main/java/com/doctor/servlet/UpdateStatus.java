package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDao;
import com.db.DBConnect;

@WebServlet("/update_status")
public class UpdateStatus extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			int did=Integer.parseInt(req.getParameter("did"));
			String comment=req.getParameter("comment");
			
			AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
			HttpSession session =req.getSession();
			
			if(dao.updateCommentStatus(id, did, comment)) {
				
				session.setAttribute("succMsg", "Comment update successfully....");
				resp.sendRedirect("doctor/patient.jsp");
				System.out.println("Comment update successfully.... ");
			}else {
				session.setAttribute("failedMsg", "something wrong on server....");
				resp.sendRedirect("doctor/patient.jsp");
				System.err.println("something wrong on server........ ");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
}
