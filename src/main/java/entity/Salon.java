package entity;

public class Salon {
	
	private int id;
    private String salonName;
    
    
	public Salon() {
		super();
		
	}


	public Salon(int id, String salonName) {
		super();
		this.id = id;
		this.salonName = salonName;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getSalonName() {
		return salonName;
	}


	public void setSalonName(String salonName) {
		this.salonName = salonName;
	}
	
	
	
    
    

}
