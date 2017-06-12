package kosta.web.model.vo;

public class UserVo {

	private String id;
	private String password;
	private String tell;
	private String userPic;
	private int point;

	public UserVo() {
	}

	public UserVo(String id, String password, String tell, String userPic, int point) {
		super();
		this.id = id;
		this.password = password;
		this.tell = tell;
		this.userPic = userPic;
		this.point = point;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTell() {
		return tell;
	}

	public void setTell(String tell) {
		this.tell = tell;
	}

	public String getUserPic() {
		return userPic;
	}

	public void setUserPic(String userPic) {
		this.userPic = userPic;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

}
