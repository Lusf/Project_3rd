package kosta.web.model.dao.travelge;

import kosta.web.model.vo.AvgScoreVo;

public interface TravelgeAvgScoreDAO {
/*
	travelgeWishListAdd 여행지 찜 추가
	travelgeWishListDelete 여행지 찜 취소

	travelgeScoreInsert 별점 추가
	travelgeScoreUpdate 별점 수정
	travelgeAvgScore 장소 별점 계산
	travelgeScore 내가준별점
	*/
	
	int travelgeWishListAdd(AvgScoreVo avgScoreVo);
	
	int travelgeWishListDelete(AvgScoreVo avgScoreVo);
	
	int travelgeScoreInsert(AvgScoreVo avgScoreVo);
	
	int travelgeScoreUpdate(AvgScoreVo avgScoreVo);
	
	AvgScoreVo travelgeAvgScore(String contentCode);
	
	AvgScoreVo travelgeScore(AvgScoreVo avgScoreVo);
}