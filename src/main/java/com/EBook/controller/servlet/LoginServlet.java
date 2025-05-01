package com.EBook.controller.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.EBook.controller.dao.UserDAOImpl;
import com.EBook.controller.controller.database.DBConnect;
import com.EBook.model.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			UserDAOImpl dao=new UserDAOImpl(DBConnect.getConn());

			HttpSession session=req.getSession();
			String email = req.getParameter("Email");
			String password = req.getParameter("Password");

			// System.out.println(email+" "+password+" ");

			if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
				User us=new User();
				session.setAttribute("userobj", us);
				resp.sendRedirect("/EBook/pages/admin/home.jsp");

			}else {
				User us=dao.login(email, password);
				if(us!=null) {
					session.setAttribute("userobj", us);
					resp.sendRedirect("/EBook/pages/home.jsp");
				}else {
					session.setAttribute("failedMsg", "Invalid Email or Password");
					resp.sendRedirect("/EBook/pages/login.jsp");
				}
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
