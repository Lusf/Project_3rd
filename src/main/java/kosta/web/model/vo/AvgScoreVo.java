package kosta.web.model.vo;

public class AvgScoreVo {
	/*
	 * id contentCode score wish_list
	 */

	private String id;
	private String contentCode;
	private double score;
	private int personCount;
	private int wish_list;

	public AvgScoreVo() {}
	
	
	
	public AvgScoreVo(String id, String contentCode) {
		super();
		this.id = id;
		this.contentCode = contentCode;
	}

	public AvgScoreVo(String id, String contentCode, int score, int wish_list) {
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

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public int getWish_list() {
		return wish_list;
	}

	public void setWish_list(int wish_list) {
		this.wish_list = wish_list;
	}



	public int getPersonCount() {
		return personCount;
	}



	public void setPersonCount(int personCount) {
		this.personCount = personCount;
	}



	@Override
	public String toString() {
		return "AvgScoreVo [id=" + id + ", contentCode=" + contentCode + ", score=" + score + ", personCount="
				+ personCount + ", wish_list=" + wish_list + ", getId()=" + getId()
				+ ", getContentCode()=" + getContentCode() + ", getScore()=" + getScore()
				+ ", getWish_list()=" + getWish_list() + ", getPersonCount()=" + getPersonCount()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}

	
}