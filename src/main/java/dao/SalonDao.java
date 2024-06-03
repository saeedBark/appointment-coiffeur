package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.Salon;


public class SalonDao {
	private Connection conn;

	public SalonDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addSalon(String salon)
	
	{
		boolean f = false;
        try {
            String sql = "insert into salon(salon_name) values(?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, salon);

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
		
            
	}
	
	   // list salon
    public List<Salon> geAllSalon(){
        List<Salon> list = new ArrayList<>();
        Salon s=null;
        
        try {
            String sql="select * from salon";
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs=ps.executeQuery();
            while (rs.next()){
                s=new Salon();
                s.setId(rs.getInt(1));
                s.setSalonName(rs.getString(2));
                list.add(s);
            }


        }catch (Exception e){
            e.printStackTrace();
        }

        return list;
    }
	

}
