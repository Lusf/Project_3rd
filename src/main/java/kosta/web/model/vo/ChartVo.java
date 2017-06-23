package kosta.web.model.vo;

public class ChartVo {

	private int cntUser;
	private String join_date;
	
	private int wishCnt;
	private int wishRank;
	private String contentCode;
	
	
	public int getCntUser() {
		return cntUser;
	}
	public void setCntUser(int cntUser) {
		this.cntUser = cntUser;
	}

	public int getWishCnt() {
		return wishCnt;
	}
	public void setWishCnt(int wishCnt) {
		this.wishCnt = wishCnt;
	}
	public String getContentCode() {
		return contentCode;
	}
	public void setContentCode(String contentCode) {
		this.contentCode = contentCode;
	}
	public int getWishRank() {
		return wishRank;
	}
	public void setWishRank(int wishRank) {
		this.wishRank = wishRank;
	}
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	
	
}
