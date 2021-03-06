package kosta.web.model.dao.travelge;

import java.util.List;

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
	
	int travelgeWishListInsert(String id, String contentCode);
	
	int travelgeWishListUpdate(String id, String contentCode, int wishList);
	
	List<AvgScoreVo> travelgeWishListSelect(AvgScoreVo avgScoreVo);
	
	int travelgeScoreInsert(String id, String contentCode, double score);
	
	int travelgeScoreUpdate(String id, String contentCode, double score);
	
	AvgScoreVo travelgeAvgScore(String contentCode);
	
	AvgScoreVo scoreDuplicate(String contentCode);
	
	AvgScoreVo selectUserScore(String contentCode, String id);
}