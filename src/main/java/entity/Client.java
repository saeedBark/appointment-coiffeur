package entity;

public class Client {
	
	private int id;
    private String name;
    private String email;
    private String tel;
    private String payer;
    
    
    
	public Client() {
		super();
		
	}



	public Client(String name, String email, String tel, String payer) {
		super();
		this.name = name;
		this.email = email;
		this.tel = tel;
		this.payer = payer;
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



	public String getPayer() {
		return payer;
	}



	public void setPayer(String payer) {
		this.payer = payer;
	}
    
    
    
    

	
}
