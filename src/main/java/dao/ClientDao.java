package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import entity.Client;


public class ClientDao {

	private Connection conn;

	public ClientDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean ClientRegister(Client c)
	{
		
		boolean f=false;
		
		
		try {
			
			String sql = "insert into client(nom,email,tel,payer) values(?,?,?,?) ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, c.getName());
            ps.setString(2, c.getEmail());
            ps.setString(3, c.getTel());
            ps.setString(4, c.getPayer());
            

            int i = ps.executeUpdate();

            if (i == 1) {
                f = true;
            }
			
			
		} catch (Exception e) {
            e.printStackTrace();
        }
		
		return f;
		
	}
	


}
