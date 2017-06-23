package kosta.web.model.vo;

public class ChartVo {

	private int cntUser;
	private String join_date;
	
	private int cnt;
	private String name;
	private double avg;
	
	private String contentCode;
	
	
	public int getCntUser() {
		return cntUser;
	}
	public void setCntUser(int cntUser) {
		this.cntUser = cntUser;
	}

	
	public String getContentCode() {
		return contentCode;
	}
	public void setContentCode(String contentCode) {
		this.contentCode = contentCode;
	}
	
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getAvg() {
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	
	
}
