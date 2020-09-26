package server;

public class Utilisateur {
	private String email,password;

	public Utilisateur(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}
	

	public Utilisateur() {
		super();
	}


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	

}
