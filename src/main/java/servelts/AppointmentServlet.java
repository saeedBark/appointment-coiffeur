package servelts;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dao.AppointmentDao;
import db.DBConnect;

import entity.Appointment;

@WebServlet("/addAppointement")
public class AppointmentServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String service = req.getParameter("service");
		String nom = req.getParameter("nom");
		String date = req.getParameter("date");
		String email = req.getParameter("email");
		String heure = req.getParameter("heure");
		String tel = req.getParameter("tel");
		int coiffId = Integer.parseInt(req.getParameter("coiffId"));
		String payer_par = req.getParameter("payer_par");
		String address = req.getParameter("address");
		
		Appointment ap = new Appointment(service, nom, date, heure, email, tel, coiffId,payer_par,address,"OK");
		AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
        HttpSession session = req.getSession();

         if (dao.addAppointement(ap)) {
            session.setAttribute("succMsg", "Vous avez reçue un message de confirmation à votre email et numero de télphone");
            resp.sendRedirect("voir_rendez_vous.jsp");
        } else { 
            session.setAttribute("errorMsg", "Something wrong on server");
            resp.sendRedirect("voir_rendez_vous.jsp");
        } 
		
		
		
	}
	

}
 