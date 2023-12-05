package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDAOImpl;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String name=req.getParameter("fname");
			String email=req.getParameter("email");
			String phno=req.getParameter("phno");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
			
			//System.out.println(name + " " + email + " "+ phno +""+ password +" "+ check);

			
			User u= new User();
			u.setName(name);
			u.setEmail(email);
			u.setPhno(phno);
			u.setPassword(password);
			
			HttpSession session = req.getSession();
			
			if(check!=null) {
			
			UserDAOImpl dao= new UserDAOImpl(DBConnect.getConn());
			
			boolean f2=dao.checkUser(email);
			
			if(f2)
			{
				boolean f= dao.userRegister(u);
				if(f)
				{
					//System.out.println("User successfully register. ");
					session.setAttribute("succMsg", "Successful registration.");
					resp.sendRedirect("register.jsp");
					
				}
				else
				{
					//System.out.println("Something went wrong...");
					session.setAttribute("failedMsg", "Something went wrong.");
					resp.sendRedirect("register.jsp");
				}
			}
			else 
			{
				session.setAttribute("failedMsg", "User Already Exists, try another email.");
				resp.sendRedirect("register.jsp");
			}
			
		}
			else //System.out.println("Please check terms and condition");
			{
				session.setAttribute("failedMsg", "Plese check terms and condition.");
				resp.sendRedirect("register.jsp");
			}
			
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
