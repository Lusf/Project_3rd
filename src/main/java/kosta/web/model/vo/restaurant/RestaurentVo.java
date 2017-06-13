package kosta.web.model.vo.restaurant;

public class RestaurentVo {
//	restaurantName	addr	category	contentCode id
	private String contentCode;
	private String restaurantName;
	private String addr;
	private String category;
	private String id;
	
	public RestaurentVo() {}
	public RestaurentVo(String contentCode, String restaurantName, String addr, String category, String id) {
		super();
		this.contentCode = contentCode;
		this.restaurantName = restaurantName;
		this.addr = addr;
		this.category = category;
		this.id = id;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getContentCode() {
		return contentCode;
	}
	public void setContentCode(String contentCode) {
		this.contentCode = contentCode;
	}
	@Override
	public String toString() {
		return "RestaurentVo [contentCode=" + contentCode + ", restaurantName=" + restaurantName + ", addr=" + addr
				+ ", category=" + category + ", id=" + id + "]";
	}
}
