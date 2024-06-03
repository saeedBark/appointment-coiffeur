package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.Employe;



public class EmployeDao {
	
	private Connection conn;

	public EmployeDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean registerEmploye(Employe e)
	{
		
	boolean f=false;
	
	try {
		String sql="insert into employe(name,service,salon,region,email,tel,password)"+
                "values(?,?,?,?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, e.getName());
		ps.setString(2, e.getService());
        ps.setString(3, e.getSalon());
        ps.setString(4, e.getRegion());
        ps.setString(5, e.getEmail());
        ps.setString(6, e.getTel());
        ps.setString(7, e.getPassword());
		
        int i = ps.executeUpdate();
        if (i == 1) {
            f = true;
        }
        
	} catch (Exception e1) {
		e1.printStackTrace();
	}
	
	return f;
		
	}
	
	 // recup list employe
    public List<Employe> getAllEmploye() {
        List<Employe> list = new ArrayList<Employe>();
        Employe e = null;
        try {

            String sql = "select * from employe order by id desc";
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                e = new Employe();
                e.setId(rs.getInt(1));
                e.setName(rs.getString(2));
                e.setService(rs.getString(3));
                e.setSalon(rs.getString(4));
                e.setRegion(rs.getString(5));
                e.setEmail(rs.getString(6));
                e.setTel(rs.getString(7));
                e.setPassword(rs.getString(8));
                list.add(e);
            }

        } catch (Exception e1) {
            e1.printStackTrace();
        }
        return list;
    }
    
    
    public Employe getAllEmployeById(int id) {
       
        Employe e = null;
        try {

            String sql = "select * from employe where id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                e = new Employe();
                e.setId(rs.getInt(1));
                e.setName(rs.getString(2));
                e.setService(rs.getString(3));
                e.setSalon(rs.getString(4));
                e.setRegion(rs.getString(5));
                e.setEmail(rs.getString(6));
                e.setTel(rs.getString(7));
                e.setPassword(rs.getString(8));
                
            }

        } catch (Exception e1) {
            e1.printStackTrace();
        }
        return e;
    }
    
    
    public boolean updateEmploye(Employe e)
	{
		
	boolean f=false;
	
	try {
		String sql="update employe set name=?,service=?,salon=?,region=?,email=?,tel=?,password=? where id=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, e.getName());
		ps.setString(2, e.getService());
        ps.setString(3, e.getSalon());
        ps.setString(4, e.getRegion());
        ps.setString(5, e.getEmail());
        ps.setString(6, e.getTel());
        ps.setString(7, e.getPassword());
        ps.setInt(8, e.getId());
        int i = ps.executeUpdate();
        if (i == 1) {
            f = true;
        }
        
	} catch (Exception e1) {
		e1.printStackTrace();
	}
	
	return f;
		
	}
    
    public boolean deleteEmploye(int id) {
    	
    	boolean f=false;
    	
    	try {
    		String sql="delete from employe where id=?";
    		PreparedStatement  ps=conn.prepareStatement(sql);
    		ps.setInt(1, id);
    		int i=ps.executeUpdate();
    		if(i==1) 
    		{
    			f = true;
    		}
    		  
    		
    	} catch (Exception e) {
    		e.printStackTrace ();
    	}
    	
    	return f;
    }
    
    public Employe login(String email, String psw)
    {
    	Employe e=null;
    	try {
    		
    		String sql = "select * from employe where email=? and password=?";
    		 PreparedStatement ps = conn.prepareStatement(sql);
             ps.setString(1, email);
             ps.setString(2, psw);
             
             ResultSet rs = ps.executeQuery();
             while (rs.next()) {
                
            	 e = new Employe();
                 e.setId(rs.getInt(1));
                 e.setName(rs.getString(2));
                 e.setService(rs.getString(3));
                 e.setSalon(rs.getString(4));
                 e.setRegion(rs.getString(5));
                 e.setEmail(rs.getString(6));
                 e.setTel(rs.getString(7));
                 e.setPassword(rs.getString(8));
             }
    		
    	
    		
    	} catch(Exception e1) {
    		e1.printStackTrace();
    	}
    	
    	return e;
    }

}
