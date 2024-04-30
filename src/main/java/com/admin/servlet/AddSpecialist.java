package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SpecalistDao;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/add_spec")
public class AddSpecialist extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String specName=req.getParameter("specName");
			
			SpecalistDao dao=new SpecalistDao(DBConnect.getConn());
			boolean f=dao.addSpecalist(specName);
			HttpSession session =req.getSession();
			
			if(f){
				session.setAttribute("succMsg", "Specialist add successfully...");
				resp.sendRedirect("admin/index.jsp");
				System.out.println("Specialist add successfully...");
				
			}else {
				session.setAttribute("failedMsg", "Something wrong on server.....");
				resp.sendRedirect("admin/index.jsp");
				System.err.println("Something wrong on server.....");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	

}
