package kosta.web.model.vo.place;

import kosta.web.model.vo.AvgScoreVo;

public class TravelgeInfoVo {
	/*
	 * contentCode travelgeName travelgeAddr travelgeDescription travelgeTheme -
	 * ī�װ� travelgeRegion travelgeCoordinates - ��ǥ
	 * 
	 * AvgScoreVo avgScoreVo
	 */
	private String contentCode;
	private String travelgeName;
	private String travelgeAddr;
	private String travelgeDescription;
	private String travelgeTheme;
	private String travelgeRegion;
	private String travelgeCoordinates;

	private AvgScoreVo avgScoreVo;

	public TravelgeInfoVo() {
	}

	public TravelgeInfoVo(String contentCode, String travelgeName, String travelgeAddr, String travelgeTheme,
			String travelgeRegion) {
		super();
		this.contentCode = contentCode;
		this.travelgeName = travelgeName;
		this.travelgeAddr = travelgeAddr;
		this.travelgeTheme = travelgeTheme;
		this.travelgeRegion = travelgeRegion;
	}

	public TravelgeInfoVo(String contentCode, String travelgeName, String travelgeAddr, String travelgeDescription,
			String travelgeTheme, String travelgeRegion, String travelgeCoordinates, AvgScoreVo avgScoreVo) {
		super();
		this.contentCode = contentCode;
		this.travelgeName = travelgeName;
		this.travelgeAddr = travelgeAddr;
		this.travelgeDescription = travelgeDescription;
		this.travelgeTheme = travelgeTheme;
		this.travelgeRegion = travelgeRegion;
		this.travelgeCoordinates = travelgeCoordinates;
		this.avgScoreVo = avgScoreVo;
	}

	public String getContentCode() {
		return contentCode;
	}

	public void setContentCode(String contentCode) {
		this.contentCode = contentCode;
	}

	public String getTravelgeName() {
		return travelgeName;
	}

	public void setTravelgeName(String travelgeName) {
		this.travelgeName = travelgeName;
	}

	public String getTravelgeAddr() {
		return travelgeAddr;
	}

	public void setTravelgeAddr(String travelgeAddr) {
		this.travelgeAddr = travelgeAddr;
	}

	public String getTravelgeDescription() {
		return travelgeDescription;
	}

	public void setTravelgeDescription(String travelgeDescription) {
		this.travelgeDescription = travelgeDescription;
	}

	public String getTravelgeTheme() {
		return travelgeTheme;
	}

	public void setTravelgeTheme(String travelgeTheme) {
		this.travelgeTheme = travelgeTheme;
	}

	public String getTravelgeRegion() {
		return travelgeRegion;
	}

	public void setTravelgeRegion(String travelgeRegion) {
		this.travelgeRegion = travelgeRegion;
	}

	public String getTravelgeCoordinates() {
		return travelgeCoordinates;
	}

	public void setTravelgeCoordinates(String travelgeCoordinates) {
		this.travelgeCoordinates = travelgeCoordinates;
	}

	public AvgScoreVo getAvgScoreVo() {
		return avgScoreVo;
	}

	public void setAvgScoreVo(AvgScoreVo avgScoreVo) {
		this.avgScoreVo = avgScoreVo;
	}

}