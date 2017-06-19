package kosta.web.model.vo.travelge;

public class TravelgeLatestCommentVo {

	private String id;
	private String contentCode;
	private String blogTitle;
	private String blogDate;
	private String travelgeName;
	private String userPic;
	
	public TravelgeLatestCommentVo() {
		super();
	}

	public TravelgeLatestCommentVo(String id, String contentCode, String blogTitle, String blogDate,
			String travelgeName, String userPic) {
		super();
		this.id = id;
		this.contentCode = contentCode;
		this.blogTitle = blogTitle;
		this.blogDate = blogDate;
		this.travelgeName = travelgeName;
		this.userPic = userPic;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContentCode() {
		return contentCode;
	}

	public void setContentCode(String contentCode) {
		this.contentCode = contentCode;
	}

	public String getBlogTitle() {
		return blogTitle;
	}

	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}

	public String getBlogDate() {
		return blogDate;
	}

	public void setBlogDate(String blogDate) {
		this.blogDate = blogDate;
	}

	public String getTravelgeName() {
		return travelgeName;
	}

	public void setTravelgeName(String travelgeName) {
		this.travelgeName = travelgeName;
	}

	public String getUserPic() {
		return userPic;
	}

	public void setUserPic(String userPic) {
		this.userPic = userPic;
	}
}
