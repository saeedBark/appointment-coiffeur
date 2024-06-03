package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.Service;


public class ServiceDao {
	private Connection conn;

	public ServiceDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addService(String serv)
	{
		boolean f = false;
        try {
            String sql = "insert into service(serv_name) values(?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, serv);

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
		
	}
	   // list service
    public List<Service> geAllServ(){
        List<Service> list = new ArrayList<>();
        Service s=null;

        try {
            String sql="select * from service";
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs=ps.executeQuery();
            while (rs.next()){
                s=new Service();
                s.setId(rs.getInt(1));
                s.setServiceName(rs.getString(2));
                list.add(s);
            }


        }catch (Exception e){
            e.printStackTrace();
        }

        return list;
    }


}
