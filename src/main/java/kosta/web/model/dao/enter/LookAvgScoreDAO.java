package kosta.web.model.dao.enter;

import kosta.web.model.vo.AvgScoreVo;

public interface LookAvgScoreDAO {
/*	 * lookWishListAdd - ���Ÿ� �� ���
	 * lookWishListDelete - ���Ÿ� �� ����
	 * 
	 * lookScoreInsert - ���� ���
	 * lookScoreUpdate - ���� ����*/
	
	
	/**
	 * ���Ÿ� �� ���
	 * */
	int lookWishListAdd(AvgScoreVo avgScoreVo);
	
	/**
	 * ���Ÿ� �� ����
	 * */
	int lookWishListDelete(AvgScoreVo avgScoreVo);
	
	/**
	 * ���� ���
	 * */
	int lookScoreInsert(AvgScoreVo avgScoreVo);
	
	/**
	 * ���� ����
	 * */
	int lookScoreUpdate(AvgScoreVo avgScoreVo);
}
