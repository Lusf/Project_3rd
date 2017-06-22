package kosta.web.model.vo.travelge;

public class TravelgeRecommandationVo {
	/*
	 * contentCode recommadationTitle recommadationDescription
	 */

	private String contentCode;
	private String recommandationTitle;
	private String recommandationDescription;
	private int readNum;
	private String recommandationDate;
	private int cnt;
	private String thumbnail;
	
	
	public TravelgeRecommandationVo() {
	}

	public TravelgeRecommandationVo(String contentCode, String recommandationTitle, String recommandationDescription) {
		super();
		this.contentCode = contentCode;
		this.recommandationTitle = recommandationTitle;
		this.recommandationDescription = recommandationDescription;
	}

	public TravelgeRecommandationVo(String contentCode, String recommandationTitle, String recommandationDescription,
			int readNum, String recommandationDate, int cnt) {
		super();
		this.contentCode = contentCode;
		this.recommandationTitle = recommandationTitle;
		this.recommandationDescription = recommandationDescription;
		this.readNum = readNum;
		this.recommandationDate = recommandationDate;
		this.cnt = cnt;
	}

	public TravelgeRecommandationVo(String contentCode, String recommandationTitle, String recommandationDescription,
			int readNum, String recommandationDate) {
		super();
		this.contentCode = contentCode;
		this.recommandationTitle = recommandationTitle;
		this.recommandationDescription = recommandationDescription;
		this.readNum = readNum;
		this.recommandationDate = recommandationDate;
	}

	public String getRecommandationTitle() {
		return recommandationTitle;
	}

	public void setRecommandationTitle(String recommandationTitle) {
		this.recommandationTitle = recommandationTitle;
	}

	public String getRecommandationDescription() {
		return recommandationDescription;
	}

	public void setRecommandationDescription(String recommandationDescription) {
		this.recommandationDescription = recommandationDescription;
	}

	public String getContentCode() {
		return contentCode;
	}

	public void setContentCode(String contentCode) {
		this.contentCode = contentCode;
	}

	public int getReadNum() {
		return readNum;
	}

	public void setReadNum(int readNum) {
		this.readNum = readNum;
	}

	public String getRecommandationDate() {
		return recommandationDate;
	}

	public void setRecommandationDate(String recommandationDate) {
		this.recommandationDate = recommandationDate;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	
	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	@Override
	public String toString() {
		return "TravelgeRecommandationVo [contentCode=" + contentCode + ", recommandationTitle=" + recommandationTitle
				+ ", recommandationDescription=" + recommandationDescription + ", readNum=" + readNum
				+ ", recommandationDate=" + recommandationDate + ", cnt=" + cnt + "]";
	}

}