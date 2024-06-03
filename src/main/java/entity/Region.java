package entity;

public class Region {
	
	private int id;
    private String regionName;
    
    
	public Region() {
		super();
		
	}


	public Region(int id, String regionName) {
		super();
		this.id = id;
		this.regionName = regionName;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getRegionName() {
		return regionName;
	}


	public void setRegionName(String regionName) {
		this.regionName = regionName;
	}
	
	
    
    
    

}
