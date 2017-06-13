package kosta.web.model.vo.enter;

/*
 * **LGBoardComment(���� ��õ �Խ��� ���)
 * 
 * id(ID) / lgbNum(�۹�ȣ) / lgbcomNum(��۹�ȣ) / lgbcomDate(����ۼ���) / lgbComment(��۳���)
 *  
 * */
public class LGBoardCommentVo {
	private String id;
	private int lgbNum;
	private int lgbcomNum;
	private String lgbcomDate;
	private String lgbComment;
	
	public LGBoardCommentVo(){}
	
	public LGBoardCommentVo(String id, int lgbNum, int lgbcomNum, String lgbcomDate, String lgbComment) {
		super();
		this.id = id;
		this.lgbNum = lgbNum;
		this.lgbcomNum = lgbcomNum;
		this.lgbcomDate = lgbcomDate;
		this.lgbComment = lgbComment;
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
	public int getLgbcomNum() {
		return lgbcomNum;
	}
	public void setLgbcomNum(int lgbcomNum) {
		this.lgbcomNum = lgbcomNum;
	}
	public String getLgbcomDate() {
		return lgbcomDate;
	}
	public void setLgbcomDate(String lgbcomDate) {
		this.lgbcomDate = lgbcomDate;
	}
	public String getLgbComment() {
		return lgbComment;
	}
	public void setLgbComment(String lgbComment) {
		this.lgbComment = lgbComment;
	}
}
