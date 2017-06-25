package kosta.web.model.dao.enter;

import java.util.List;

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
	int lookWishListInsert(String id, String contentCode);
	
	/**
	 * ���Ÿ� �� ��ȸ
	 * */
	List<AvgScoreVo> lookWishListSelect(AvgScoreVo avgScoreVo);
	
	/**
	 * ���Ÿ� �� ����
	 * */
	int lookWishListUpdate(String id, String contentCode, int wishList);
	
	/**
	 * ���� ���
	 * */
	int lookScoreInsert(AvgScoreVo avgScoreVo);
	
	/**
	 * ���� ����
	 * */
	int lookScoreUpdate(AvgScoreVo avgScoreVo);
}
