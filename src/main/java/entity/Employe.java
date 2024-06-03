package entity;

public class Employe {
	private int id;
    private String name;
    private String service;
    private String salon;
    private String region;
    private String email;
    private String tel;
    private String password;
    
    
	public Employe() {
		super();
		
	}


	public Employe(String name, String service, String salon, String region, String email, String tel,
			String password) {
		super();
		this.name = name;
		this.service = service;
		this.salon = salon;
		this.region = region;
		this.email = email;
		this.tel = tel;
		this.password = password;
	}
	
	


	public Employe(int id, String name, String service, String salon, String region, String email, String tel,
			String password) {
		super();
		this.id = id;
		this.name = name;
		this.service = service;
		this.salon = salon;
		this.region = region;
		this.email = email;
		this.tel = tel;
		this.password = password;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getService() {
		return service;
	}


	public void setService(String service) {
		this.service = service;
	}


	public String getSalon() {
		return salon;
	}


	public void setSalon(String salon) {
		this.salon = salon;
	}


	public String getRegion() {
		return region;
	}


	public void setRegion(String region) {
		this.region = region;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
    
	
    
    
    
    

}
