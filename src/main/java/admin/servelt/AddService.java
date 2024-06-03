package admin.servelt;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ServiceDao;
import db.DBConnect;



@WebServlet("/addService")
public class AddService extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String servName = req.getParameter("servName");

        ServiceDao dao = new ServiceDao(DBConnect.getConn());
        boolean f = dao.addService(servName);

        HttpSession session = req.getSession();

        if (f) {
            session.setAttribute("succMsg", "Service Ajouté");
            resp.sendRedirect("admin/index.jsp");
        } else {
            session.setAttribute("errorMsg", "something wrong on server");
            resp.sendRedirect("admin/index.jsp");
        }

		
	}
	
	

}
