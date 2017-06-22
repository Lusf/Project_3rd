package kosta.web.model.vo.enter;

import org.springframework.web.multipart.MultipartFile;

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
	private String lookTitle;
	private String lookStory;
	private String lookMaker;
	private String lookImg;
	private String lookGenre;
	private String lookStartDate;
	private String lookLastDate;
	private String lookLoca;
	private String lookCate;
	private String lookAge;			//연령등급
	private String x;
	private String y;
	
	private AvgScoreVo avgScoreVo;
	
	private int cnt;
	
	private MultipartFile file;
	
	private MultipartFile pic1;
	private MultipartFile pic2;
	private MultipartFile pic3;
	private MultipartFile pic4;
	
	
	public AvgScoreVo getAvgScoreVo() {
		return avgScoreVo;
	}

	public void setAvgScoreVo(AvgScoreVo avgScoreVo) {
		this.avgScoreVo = avgScoreVo;
	}

	public LookInfoVo(){}
	
	public LookInfoVo(String contentCode, String lookTitle, String lookStory, String lookMaker, String lookImg, String lookGenre,
			String lookStartDate, String lookLastDate, String lookLoca, String lookCate, String lookAge) {
		super();
		this.contentCode = contentCode;
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

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public MultipartFile getPic1() {
		return pic1;
	}

	public void setPic1(MultipartFile pic1) {
		this.pic1 = pic1;
	}

	public MultipartFile getPic2() {
		return pic2;
	}

	public void setPic2(MultipartFile pic2) {
		this.pic2 = pic2;
	}

	public MultipartFile getPic3() {
		return pic3;
	}

	public void setPic3(MultipartFile pic3) {
		this.pic3 = pic3;
	}

	public MultipartFile getPic4() {
		return pic4;
	}

	public void setPic4(MultipartFile pic4) {
		this.pic4 = pic4;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
}
