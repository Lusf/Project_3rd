package kosta.web.model.vo;

public class Authorities {

	private String username;
	private String role;

	public Authorities() {
		// TODO Auto-generated constructor stub
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Authorities(String username, String role) {
		super();
		this.username = username;
		this.role = role;
	}

}
