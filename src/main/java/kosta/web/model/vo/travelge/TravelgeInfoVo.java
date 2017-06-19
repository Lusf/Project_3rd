package kosta.web.model.vo.travelge;

import org.springframework.web.multipart.MultipartFile;

import kosta.web.model.vo.AvgScoreVo;

public class TravelgeInfoVo {
	/*
	 * contentCode travelgeName travelgeAddr travelgeDescription travelgeTheme -
	 * 카테고리 travelgeRegion travelgeCoordinates - 좌표
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
	private String x;
	private String y;


	private String travelgePhotos;
	
	private AvgScoreVo avgScoreVo;
	
	private int cnt;
	
	private MultipartFile file;

	public TravelgeInfoVo() {
	}
	
	

	public TravelgeInfoVo(String contentCode, String travelgeName, String travelgeAddr, String travelgeDescription,
			String travelgeTheme, String travelgeRegion, String travelgeCoordinates, String travelgePhotos,
			AvgScoreVo avgScoreVo, int cnt, MultipartFile file) {
		super();
		this.contentCode = contentCode;
		this.travelgeName = travelgeName;
		this.travelgeAddr = travelgeAddr;
		this.travelgeDescription = travelgeDescription;
		this.travelgeTheme = travelgeTheme;
		this.travelgeRegion = travelgeRegion;
		this.travelgeCoordinates = travelgeCoordinates;
		this.travelgePhotos = travelgePhotos;
		this.avgScoreVo = avgScoreVo;
		this.cnt = cnt;
		this.file = file;
	}



	public TravelgeInfoVo(String contentCode, String travelgeName, String travelgeAddr, String travelgeDescription,
			String travelgeTheme, String travelgeRegion, String travelgeCoordinates, String travelgePhotos,
			AvgScoreVo avgScoreVo, int cnt) {
		super();
		this.contentCode = contentCode;
		this.travelgeName = travelgeName;
		this.travelgeAddr = travelgeAddr;
		this.travelgeDescription = travelgeDescription;
		this.travelgeTheme = travelgeTheme;
		this.travelgeRegion = travelgeRegion;
		this.travelgeCoordinates = travelgeCoordinates;
		this.travelgePhotos = travelgePhotos;
		this.avgScoreVo = avgScoreVo;
		this.cnt = cnt;
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
			String travelgeTheme, String travelgeRegion, String travelgeCoordinates, AvgScoreVo avgScoreVo, int cnt) {
		super();
		this.contentCode = contentCode;
		this.travelgeName = travelgeName;
		this.travelgeAddr = travelgeAddr;
		this.travelgeDescription = travelgeDescription;
		this.travelgeTheme = travelgeTheme;
		this.travelgeRegion = travelgeRegion;
		this.travelgeCoordinates = travelgeCoordinates;
		this.avgScoreVo = avgScoreVo;
		this.cnt = cnt;
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
	

	public String getTravelgePhotos() {
		return travelgePhotos;
	}

	public void setTravelgePhotos(String travelgePhotos) {
		this.travelgePhotos = travelgePhotos;
	}

	public MultipartFile getFile() {
		return file;
	}



	public void setFile(MultipartFile file) {
		this.file = file;
	}



	public AvgScoreVo getAvgScoreVo() {
		return avgScoreVo;
	}

	public void setAvgScoreVo(AvgScoreVo avgScoreVo) {
		this.avgScoreVo = avgScoreVo;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
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
		return "TravelgeInfoVo [contentCode=" + contentCode + ", travelgeName=" + travelgeName + ", travelgeAddr="
				+ travelgeAddr + ", travelgeDescription=" + travelgeDescription + ", travelgeTheme=" + travelgeTheme
				+ ", travelgeRegion=" + travelgeRegion + ", travelgeCoordinates=" + travelgeCoordinates
				+ ", travelgePhotos=" + travelgePhotos + ", avgScoreVo=" + avgScoreVo + ", cnt=" + cnt + ", file="
				+ file + "]";
	}

}