package entity;

public class Appointment {
	private int id;
    private String service;
    private String nom;
    private String date;
    private String heure;
    private String email;
    private String tel;
    private int coiffId;
    private String payer_par;
    private String address;
    private String status;
    
    
	public Appointment() {
		super();
		
	}


	public Appointment(String service, String nom, String date, String heure, String email, String tel, int coiffId,
			String payer_par, String address, String status) {
		super();
		this.service = service;
		this.nom = nom;
		this.date = date;
		this.heure = heure;
		this.email = email;
		this.tel = tel;
		this.coiffId = coiffId;
		this.payer_par = payer_par;
		this.address = address;
		this.status = status;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getService() {
		return service;
	}


	public void setService(String service) {
		this.service = service;
	}


	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public String getHeure() {
		return heure;
	}


	public void setHeure(String heure) {
		this.heure = heure;
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


	public int getCoiffId() {
		return coiffId;
	}


	public void setCoiffId(int coiffId) {
		this.coiffId = coiffId;
	}


	public String getPayer_par() {
		return payer_par;
	}


	public void setPayer_par(String payer_par) {
		this.payer_par = payer_par;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}
	
	
    
    
    

	
	
    
    
    
    

}
