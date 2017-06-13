package kosta.web.model.vo.enter;

/*
 * **LookgoodBoard(유저 추천 게시판)
 * 
 * id(ID) / lgbNum(글번호) / lgbDate(작성일) / lgbTitle(제목) / lgbCont(내용) / lgbImg(이미지)
 * 
 * */
public class LookgoodBoardVo {
	private String id;
	private int lgbNum;
	private String lgbDate;
	private String lgbTitle;
	private String lgbCont;
	private String lgbImg;
	
	public LookgoodBoardVo(){}	
	
	public LookgoodBoardVo(String id, int lgbNum, String lgbDate, String lgbTitle, String lgbCont, String lgbImg) {
		super();
		this.id = id;
		this.lgbNum = lgbNum;
		this.lgbDate = lgbDate;
		this.lgbTitle = lgbTitle;
		this.lgbCont = lgbCont;
		this.lgbImg = lgbImg;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getLgbNum() {
		return lgbNum;
	}
	public void setLgbNum(int lgbNum) {
		this.lgbNum = lgbNum;
	}
	public String getLgbDate() {
		return lgbDate;
	}
	public void setLgbDate(String lgbDate) {
		this.lgbDate = lgbDate;
	}
	public String getLgbTitle() {
		return lgbTitle;
	}
	public void setLgbTitle(String lgbTitle) {
		this.lgbTitle = lgbTitle;
	}
	public String getLgbCont() {
		return lgbCont;
	}
	public void setLgbCont(String lgbCont) {
		this.lgbCont = lgbCont;
	}
	public String getLgbImg() {
		return lgbImg;
	}
	public void setLgbImg(String lgbImg) {
		this.lgbImg = lgbImg;
	}
	
	
}
