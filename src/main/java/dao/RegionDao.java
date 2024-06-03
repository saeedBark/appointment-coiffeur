package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.Region;




public class RegionDao {
	
	private Connection conn;

	public RegionDao(Connection conn) {
		super();
		this.conn = conn;
		
	}
		
		public boolean addRegion(String region)
		
		{
			
			boolean f = false;
	        try {
	            String sql = "insert into region(region_name) values(?)";
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setString(1, region);

	            int i = ps.executeUpdate();
	            if (i == 1) {
	                f = true;
	            }
	            
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return f;
			
			
			
		}
		
		
		// list region
	    public List<Region> geAllRegion(){
	        List<Region> list = new ArrayList<>();
	        Region r=null;
	        
	        try {
	        	
	        	
	        	 String sql="select * from region";
	        	 PreparedStatement ps = conn.prepareStatement(sql);
	        	 
	        	 ResultSet rs=ps.executeQuery();
	             while (rs.next()){
	                 r=new Region();
	                 r.setId(rs.getInt(1));
	                 r.setRegionName(rs.getString(2));
	                 list.add(r);
	             }
	        	 

	        }catch (Exception e){
	            e.printStackTrace();
	        }

	        return list;
	    }

	             
	        
	
		
	
	
	

}
