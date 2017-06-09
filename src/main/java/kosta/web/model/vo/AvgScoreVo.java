package kosta.web.model.vo;

public class AvgScoreVo {
	/*
	 * id contentCode score wish_list
	 */

	private String id;
	private String contentCode;
	private int score;
	private String wish_list;

	public AvgScoreVo() {}
	
	
	
	public AvgScoreVo(String id, String contentCode) {
		super();
		this.id = id;
		this.contentCode = contentCode;
	}

	public AvgScoreVo(String id, String contentCode, int score, String wish_list) {
		super();
		this.id = id;
		this.contentCode = contentCode;
		this.score = score;
		this.wish_list = wish_list;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContentCode() {
		return contentCode;
	}

	public void setContentCode(String contentCode) {
		this.contentCode = contentCode;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getWish_list() {
		return wish_list;
	}

	public void setWish_list(String wish_list) {
		this.wish_list = wish_list;
	}

}