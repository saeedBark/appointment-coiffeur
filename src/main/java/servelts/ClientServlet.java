package servelts;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ClientDao;
import db.DBConnect;
import entity.Client;


@WebServlet("/client_register")
public class ClientServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String nom = req.getParameter("nom");
		String email = req.getParameter("email");
		String tel = req.getParameter("tel");
				
		Client c = new Client(nom,email,tel,"No_Payer");
		ClientDao dao=new ClientDao(DBConnect.getConn());
		
        HttpSession session = req.getSession(); 
        
        
        if (dao.ClientRegister(c)) {
            session.setAttribute("succMsg", "Bien venue dans notre salon");
            resp.sendRedirect("signup.jsp");
        } else { 
            session.setAttribute("errorMsg", "Something wrong on server");
            resp.sendRedirect("signup.jsp");
        } 
		
	}	

}
