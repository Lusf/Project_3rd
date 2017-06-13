package kosta.web.model.dao.enter;

import kosta.web.model.vo.AvgScoreVo;

public interface LookAvgScoreDAO {
/*	 * lookWishListAdd - 볼거리 찜 등록
	 * lookWishListDelete - 볼거리 찜 삭제
	 * 
	 * lookScoreInsert - 별점 등록
	 * lookScoreUpdate - 별점 수정*/
	
	
	/**
	 * 볼거리 찜 등록
	 * */
	int lookWishListAdd(AvgScoreVo avgScoreVo);
	
	/**
	 * 볼거리 찜 삭제
	 * */
	int lookWishListDelete(AvgScoreVo avgScoreVo);
	
	/**
	 * 별점 등록
	 * */
	int lookScoreInsert(AvgScoreVo avgScoreVo);
	
	/**
	 * 별점 수정
	 * */
	int lookScoreUpdate(AvgScoreVo avgScoreVo);
}
