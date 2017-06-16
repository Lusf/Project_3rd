package kosta.web.model.vo.travelge;

public class TravelgeRecommandationVo {
	/*
	 * contentCode recommadationTitle recommadationDescription
	 */

	private String contentCode;
	private String recommadationTitle;
	private String recommadationDescription;
	private int readNum;
	private String recommandationDate;



	public TravelgeRecommandationVo() {
	}

	public TravelgeRecommandationVo(String contentCode, String recommadationTitle, String recommadationDescription) {
		super();
		this.contentCode = contentCode;
		this.recommadationTitle = recommadationTitle;
		this.recommadationDescription = recommadationDescription;
	}

	public TravelgeRecommandationVo(String contentCode, String recommadationTitle, String recommadationDescription,
			int readNum) {
		super();
		this.contentCode = contentCode;
		this.recommadationTitle = recommadationTitle;
		this.recommadationDescription = recommadationDescription;
		this.readNum = readNum;
	}

	public TravelgeRecommandationVo(String contentCode, String recommadationTitle, String recommadationDescription,
			int readNum, String recommandationDate) {
		super();
		this.contentCode = contentCode;
		this.recommadationTitle = recommadationTitle;
		this.recommadationDescription = recommadationDescription;
		this.readNum = readNum;
		this.recommandationDate = recommandationDate;
	}
	
	public String getContentCode() {
		return contentCode;
	}

	public void setContentCode(String contentCode) {
		this.contentCode = contentCode;
	}

	public String getRecommadationTitle() {
		return recommadationTitle;
	}

	public void setRecommadationTitle(String recommadationTitle) {
		this.recommadationTitle = recommadationTitle;
	}

	public String getRecommadationDescription() {
		return recommadationDescription;
	}

	public void setRecommadationDescription(String recommadationDescription) {
		this.recommadationDescription = recommadationDescription;
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

}