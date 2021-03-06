package kosta.web.model.vo.blog;

import java.util.List;

import kosta.web.model.vo.travelge.TravelgeInfoVo;

public class UserBlogVo {
	private String id;
	private int blogNum;
	private String category;
	private String contentCode;
	private String blogTitle;
	private String blogDate;
	private String blogCont;
	private String userPic;
	
	private String name;

	
	
	public UserBlogVo() {}
	public UserBlogVo(String id, int blogNum, String category, String contentCode, String blogTitle, String blogDate, String blogCont) {
		this.id = id;
		this.blogNum = blogNum;
		this.category = category;
		this.contentCode = contentCode;
		this.blogTitle = blogTitle;
		this.blogDate = blogDate;
		this.blogCont = blogCont;
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

	public String getBlogDate() {
		return blogDate;
	}
	
	public void setBlogDate(String blogDate) {
		this.blogDate = blogDate;
	}
	
	public String getBlogCont() {
		return blogCont;
	}

	public void setBlogCont(String blogCont) {
		this.blogCont = blogCont;
	}
	public String getUserPic() {
		return userPic;
	}
	public void setUserPic(String userPic) {
		this.userPic = userPic;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}