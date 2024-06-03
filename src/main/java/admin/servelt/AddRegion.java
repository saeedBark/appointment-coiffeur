package admin.servelt;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.RegionDao;
import db.DBConnect;

@WebServlet("/addRegion")
public class AddRegion extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String regionName = req.getParameter("regionName");
		RegionDao dao = new RegionDao(DBConnect.getConn());
		boolean f = dao.addRegion(regionName);
		
		HttpSession session = req.getSession();

        if (f) {
            session.setAttribute("succMsg", "Region Ajouté");
            resp.sendRedirect("admin/index.jsp");
        } else {
            session.setAttribute("errorMsg", "something wrong on server");
            resp.sendRedirect("admin/index.jsp");
        }

	}
	
	

}
