package admin.servelt;

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

@WebServlet("/addEmploye")
public class AddEmploye extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			String name = req.getParameter("name");
			String service = req.getParameter("service");
			String salon = req.getParameter("salon");
			String region = req.getParameter("region");
			String email = req.getParameter("email");
			String tel = req.getParameter("tel");
			String password = req.getParameter("password");
			
			Employe e=new Employe(name, service, salon, region, email, tel, password);
		
			EmployeDao dao=new EmployeDao(DBConnect.getConn());
			HttpSession session = req.getSession();
			if (dao.registerEmploye(e)) {
                session.setAttribute("succMsg", "Coiffeure ajouté");
                resp.sendRedirect("admin/employe.jsp");
            } else {
                session.setAttribute("errorMsg", "something wrong on server");
                resp.sendRedirect("admin/employe.jsp");
            }
			
			
		}catch (Exception e1) {
            e1.printStackTrace();
         
		}

	}
	
	

}
