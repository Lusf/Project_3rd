package kosta.web.model.vo.restaurant;

import org.springframework.web.multipart.MultipartFile;

public class RestaurantVo {

	private String contentCode;
	private String restaurantName;
	private String restaurantInfo;
	private String category;
	private String category2;
	private String restaurantAddr;
	private String restaurantCoordinates;
	private String restaurantPic;
	private String id;
	private String x;
	private String y;
	
	private MultipartFile file;
	
	public RestaurantVo() {}

	public RestaurantVo(String contentCode, String restaurantName, String restaurantInfo, String category,
			String category2, String restaurantAddr, String restaurantCoordinates, String restaurantPic, String id) {
		super();
		this.contentCode = contentCode;
		this.restaurantName = restaurantName;
		this.restaurantInfo = restaurantInfo;
		this.category = category;
		this.category2 = category2;
		this.restaurantAddr = restaurantAddr;
		this.restaurantCoordinates = restaurantCoordinates;
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

	public String getRestaurantInfo() {
		return restaurantInfo;
	}

	public void setRestaurantInfo(String restaurantInfo) {
		this.restaurantInfo = restaurantInfo;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCategory2() {
		return category2;
	}

	public void setCategory2(String category2) {
		this.category2 = category2;
	}

	public String getRestaurantAddr() {
		return restaurantAddr;
	}

	public void setRestaurantAddr(String restaurantAddr) {
		this.restaurantAddr = restaurantAddr;
	}

	public String getRestaurantCoordinates() {
		return restaurantCoordinates;
	}

	public void setRestaurantCoordinates(String restaurantCoordinates) {
		this.restaurantCoordinates = restaurantCoordinates;
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

	public String getX() {
		return x;
	}

	public void setX(String x) {
		this.x = x;
	}

	public String getY() {
		return y;
	}

	public void setY(String y) {
		this.y = y;
	}

	@Override
	public String toString() {
		return "RestaurantVo [contentCode=" + contentCode + ", restaurantName=" + restaurantName + ", restaurantInfo="
				+ restaurantInfo + ", category=" + category + ", category2=" + category2 + ", restaurantAddr="
				+ restaurantAddr + ", restaurantCoordinates=" + restaurantCoordinates + ", restaurantPic="
				+ restaurantPic + ", id=" + id + ", x=" + x + ", y=" + y + ", file=" + file + "]";
	}


}
