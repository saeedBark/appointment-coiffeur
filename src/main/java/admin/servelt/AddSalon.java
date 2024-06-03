package admin.servelt;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.SalonDao;
import db.DBConnect;

@WebServlet("/addSalon")
public class AddSalon extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String salonName = req.getParameter("salonName");
		SalonDao dao = new SalonDao(DBConnect.getConn());
        boolean f = dao.addSalon(salonName);
        
        HttpSession session = req.getSession();

        if (f) {
            session.setAttribute("succMsg", "Salon Ajouté");
            resp.sendRedirect("admin/index.jsp");
        } else {
            session.setAttribute("errorMsg", "something wrong on server");
            resp.sendRedirect("admin/index.jsp");
        }

		
	}
	
        
        

		

	}
	
	


