package coiffeure.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dao.EmployeDao;
import db.DBConnect;
import entity.Employe;


@WebServlet("/clientLogin")
public class CoiffeureLogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email=req.getParameter("email");
        String password=req.getParameter("password");

        HttpSession session=req.getSession();

        EmployeDao dao=new EmployeDao(DBConnect.getConn());
        Employe employe=dao.login(email, password);
        
        if(employe!=null) {
        
            session.setAttribute("empObj", employe);
            resp.sendRedirect("coiffeure/index.jsp");
        } else {
            session.setAttribute("errorMsg","email & password invalides ");
            resp.sendRedirect("employe_login.jsp");
        }
		
	}
	
	
	
	
	

}
