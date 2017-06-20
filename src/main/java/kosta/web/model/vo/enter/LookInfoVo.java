package kosta.web.model.vo.enter;

import kosta.web.model.vo.AvgScoreVo;

/*
 * **LookInfo(볼거리 정보)
 * 
 * contentCode(컨텐츠코드) / id(ID) / lookTitle(제목) / lookStory(줄거리) / lookMaker(제작사) / lookImg(이미지) /	lookGenre(장르) 
 * lookStartDate(시작시간) /lookLastDate(종료시간) / lookLoca(장소) / lookCate(카테고리)
 * 
 * */
public class LookInfoVo {
	private String contentCode;
	private String id;
	private String lookTitle;
	private String lookStory;
	private String lookMaker;
	private String lookImg;
	private String lookGenre;
	private String lookStartDate;
	private String lookLastDate;
	private String lookLoca;
	private String lookCate;
	private String lookAge;
	
	private AvgScoreVo avgScoreVo;
	
	private int cnt;
	
	
	public AvgScoreVo getAvgScoreVo() {
		return avgScoreVo;
	}

	public void setAvgScoreVo(AvgScoreVo avgScoreVo) {
		this.avgScoreVo = avgScoreVo;
	}

	public LookInfoVo(){}
	
	public LookInfoVo(String contentCode, String id, String lookTitle, String lookStory, String lookMaker, String lookImg, String lookGenre,
			String lookStartDate, String lookLastDate, String lookLoca, String lookCate, String lookAge) {
		super();
		this.contentCode = contentCode;
		this.id = id;
		this.lookTitle = lookTitle;
		this.lookStory = lookStory;
		this.lookMaker = lookMaker;
		this.lookImg = lookImg;
		this.lookGenre = lookGenre;
		this.lookStartDate = lookStartDate;
		this.lookLastDate = lookLastDate;
		this.lookLoca = lookLoca;
		this.lookCate = lookCate;
		this.lookAge = lookAge;
	}
		
	public String getContentCode() {
		return contentCode;
	}

	public void setContentCode(String contentCode) {
		this.contentCode = contentCode;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLookTitle() {
		return lookTitle;
	}
	public void setLookTitle(String lookTitle) {
		this.lookTitle = lookTitle;
	}
	public String getLookStory() {
		return lookStory;
	}
	public void setLookStory(String lookStory) {
		this.lookStory = lookStory;
	}
	public String getLookMaker() {
		return lookMaker;
	}
	public void setLookMaker(String lookMaker) {
		this.lookMaker = lookMaker;
	}
	public String getLookImg() {
		return lookImg;
	}
	public void setLookImg(String lookImg) {
		this.lookImg = lookImg;
	}
	public String getLookGenre() {
		return lookGenre;
	}
	public void setLookGenre(String lookGenre) {
		this.lookGenre = lookGenre;
	}
	public String getLookStartDate() {
		return lookStartDate;
	}
	public void setLookStartDate(String lookStartDate) {
		this.lookStartDate = lookStartDate;
	}
	public String getLookLastDate() {
		return lookLastDate;
	}
	public void setLookLastDate(String lookLastDate) {
		this.lookLastDate = lookLastDate;
	}
	public String getLookLoca() {
		return lookLoca;
	}
	public void setLookLoca(String lookLoca) {
		this.lookLoca = lookLoca;
	}
	public String getLookCate() {
		return lookCate;
	}
	public void setLookCate(String lookCate) {
		this.lookCate = lookCate;
	}
	public String getLookAge() {
		return lookAge;
	}
	public void setLookAge(String lookAge) {
		this.lookAge = lookAge;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
}
