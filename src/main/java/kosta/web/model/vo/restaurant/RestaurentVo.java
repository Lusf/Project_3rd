package kosta.web.model.vo.restaurant;

import org.springframework.web.multipart.MultipartFile;

public class RestaurentVo {

	private String contentCode;
	private String restaurantName;
	private String restaurantAddr;
	private String category;
	private String restaurantInfo;
	private String restaurantPic;
	private String id;
	
	private MultipartFile file;
	
	public RestaurentVo() {}

	public RestaurentVo(String contentCode, String restaurantName, String restaurantAddr, String category,
			String restaurantInfo, String restaurantPic, String id) {
		super();
		this.contentCode = contentCode;
		this.restaurantName = restaurantName;
		this.restaurantAddr = restaurantAddr;
		this.category = category;
		this.restaurantInfo = restaurantInfo;
		this.restaurantPic = restaurantPic;
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

	public String getRestaurantAddr() {
		return restaurantAddr;
	}

	public void setRestaurantAddr(String restaurantAddr) {
		this.restaurantAddr = restaurantAddr;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getRestaurantInfo() {
		return restaurantInfo;
	}

	public void setRestaurantInfo(String restaurantInfo) {
		this.restaurantInfo = restaurantInfo;
	}

	public String getRestaurantPic() {
		return restaurantPic;
	}

	public void setRestaurantPic(String restaurantPic) {
		this.restaurantPic = restaurantPic;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "RestaurentVo [contentCode=" + contentCode + ", restaurantName=" + restaurantName + ", restaurantAddr="
				+ restaurantAddr + ", category=" + category + ", restaurantInfo=" + restaurantInfo + ", restaurantPic="
				+ restaurantPic + ", id=" + id + ", file=" + file + "]";
	}
}
