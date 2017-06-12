package kosta.web.model.vo;

public class UserBlogVo {
	private String id;
	private int blogNum;
	private String category;
	private String contentCode;
	private String blogTitle;
	private String blogCont;
	private String blogImg;
	
	public UserBlogVo(String id, int blogNum, String category, String contentCode, String blogTitle, String blogCont, String blogImg) {
		this.id = id;
		this.blogNum = blogNum;
		this.category = category;
		this.contentCode = contentCode;
		this.blogTitle = blogTitle;
		this.blogCont = blogCont;
		this.blogImg = blogImg;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getBlogNum() {
		return blogNum;
	}

	public void setBlogNum(int blogNum) {
		this.blogNum = blogNum;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
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

	public String getBlogCont() {
		return blogCont;
	}

	public void setBlogCont(String blogCont) {
		this.blogCont = blogCont;
	}

	public String getBlogImg() {
		return blogImg;
	}

	public void setBlogImg(String blogImg) {
		this.blogImg = blogImg;
	}
}