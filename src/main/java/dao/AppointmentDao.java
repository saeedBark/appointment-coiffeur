package dao;
import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import entity.Appointment;
import entity.Employe;

public class AppointmentDao {
	private Connection conn;

	public AppointmentDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addAppointement(Appointment ap)
	{
		
		boolean f=false;
		
		
		try {
			
			 String sql = "insert into appointment(service,nom,date,heure,email,tel,coiff_id,payer_par,address,status) values(?,?,?,?,?,?,?,?,?,?)";
	            PreparedStatement ps = conn.prepareStatement(sql);
	            
	            ps.setString(1, ap.getService());
	            ps.setString(2, ap.getNom());
	            ps.setString(3, ap.getDate());
	            ps.setString(4, ap.getHeure());
	            ps.setString(5, ap.getEmail());
	            ps.setString(6, ap.getTel());
	            ps.setInt(7, ap.getCoiffId());
	            ps.setString(8, ap.getPayer_par());
	            ps.setString(9, ap.getAddress());
	            ps.setString(10, ap.getStatus());

	            int i = ps.executeUpdate();
	            if (i == 1) {
	                f = true;
	            }
			
	
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
		
	}
	
	public List<Appointment> getAllAppointment(){
		
		List<Appointment> list = new ArrayList<Appointment>();
		Appointment ap = null;
        try {
        	
        	 String sql = "select * from appointment order by id desc";
             PreparedStatement ps = conn.prepareStatement(sql);
        	
             ResultSet rs = ps.executeQuery();
             while (rs.next()) {
                 ap = new Appointment();
                 ap.setId(rs.getInt(1));
                 ap.setService(rs.getString(2));
                 ap.setNom(rs.getString(3));
                 ap.setDate(rs.getString(4));
                 ap.setHeure(rs.getString(5));
                 ap.setEmail(rs.getString(6));
                 ap.setTel(rs.getString(7));
                 ap.setCoiffId(rs.getInt(8));
                 ap.setPayer_par(rs.getString(9));
                 ap.setAddress(rs.getString(10));
                 ap.setStatus(rs.getString(11));
                 list.add(ap);
             }
        	
        	
        	
        	
        	
        	
        } catch (Exception e1) {
            e1.printStackTrace();
        }
        return list;
    }
	
	
public List<Appointment> getAllAppointmentByCoiffeureLogin(int coiffId){
		
		List<Appointment> list = new ArrayList<Appointment>();
		Appointment ap = null;
        try {
        	
        	 String sql = "select * from appointment where coiff_id=?";
             PreparedStatement ps = conn.prepareStatement(sql);
        	 ps.setInt(1, coiffId);
             
             ResultSet rs = ps.executeQuery();
             while (rs.next()) {
                 ap = new Appointment();
                 ap.setId(rs.getInt(1));
                 ap.setService(rs.getString(2));
                 ap.setNom(rs.getString(3));
                 ap.setDate(rs.getString(4));
                 ap.setHeure(rs.getString(5));
                 ap.setEmail(rs.getString(6));
                 ap.setTel(rs.getString(7));
                 ap.setCoiffId(rs.getInt(8));
                 ap.setPayer_par(rs.getString(9));
                 ap.setAddress(rs.getString(10));
                 ap.setStatus(rs.getString(11));
                 list.add(ap);
             }
        	
        	
        	
        	
        	
        	
        } catch (Exception e1) {
            e1.printStackTrace();
        }
        return list;
    }
	

public Appointment getAllAppointmentById(int id){
	
	
	Appointment ap = null;
    try {
    	
    	 String sql = "select * from appointment where id=?";
         PreparedStatement ps = conn.prepareStatement(sql);
    	 ps.setInt(1, id);
         
         ResultSet rs = ps.executeQuery();
         while (rs.next()) {
             ap = new Appointment();
             ap.setId(rs.getInt(1));
             ap.setService(rs.getString(2));
             ap.setNom(rs.getString(3));
             ap.setDate(rs.getString(4));
             ap.setHeure(rs.getString(5));
             ap.setEmail(rs.getString(6));
             ap.setTel(rs.getString(7));
             ap.setCoiffId(rs.getInt(8));
             ap.setPayer_par(rs.getString(9));
             ap.setAddress(rs.getString(10));
             ap.setStatus(rs.getString(11));
             
         }
    	
    	
    	
    	
    	
    	
    } catch (Exception e1) {
        e1.printStackTrace();
    }
    return ap;
}


public boolean updateCommentStatus(int id,int coiffId,String comm) {
	
	boolean f=false;
	
	try {
		String sql="update appointment set status=? where id=? and coiff_id=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, comm);
		ps.setInt(2, id);
		ps.setInt(3, coiffId);
		
		int i=ps.executeUpdate();
		if(i == 1) {
			f = true;
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	
	
	
	return f;
}

	
}


