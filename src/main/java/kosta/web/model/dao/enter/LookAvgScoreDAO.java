package kosta.web.model.dao.enter;

import java.util.List;

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
	int lookWishListInsert(String id, String contentCode);
	
	/**
	 * 볼거리 찜 조회
	 * */
	List<AvgScoreVo> lookWishListSelect(AvgScoreVo avgScoreVo);
	
	/**
	 * 볼거리 찜 수정
	 * */
	int lookWishListUpdate(String id, String contentCode, int wishList);
	
	/**
	 * 별점 등록
	 * */
	int lookScoreInsert(AvgScoreVo avgScoreVo);
	
	/**
	 * 별점 수정
	 * */
	int lookScoreUpdate(AvgScoreVo avgScoreVo);
}
