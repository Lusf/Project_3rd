package kosta.web.model.vo.restaurant;

import org.springframework.web.multipart.MultipartFile;

public class RestaurentVo {
//	restaurantName	addr	category	contentCode id
	private String contentCode;
	private String restaurantName;
	private String addr;
	private String category;
	private String pic;
	private String id;
	
	private MultipartFile file;
	
	public RestaurentVo() {}

	public RestaurentVo(String contentCode, String restaurantName, String addr, String category, String pic,
			String id) {
		super();
		this.contentCode = contentCode;
		this.restaurantName = restaurantName;
		this.addr = addr;
		this.category = category;
		this.pic = pic;
		this.id = id;
	}
	

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getContentCode() {
		return contentCode;
	}

	public void setContentCode(String contentCode) {
		this.contentCode = contentCode;
	}

	public String getRestaurantName() {
		return restaurantName;
	}

	public void setRestaurantName(String restaurantName) {
		this.restaurantName = restaurantName;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "RestaurentVo [contentCode=" + contentCode + ", restaurantName=" + restaurantName + ", addr=" + addr
				+ ", category=" + category + ", pic=" + pic + ", id=" + id + "]";
	}
	
}
