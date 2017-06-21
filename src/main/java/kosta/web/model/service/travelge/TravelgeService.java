package kosta.web.model.service.travelge;

import java.util.List;

import kosta.web.model.vo.AvgScoreVo;
import kosta.web.model.vo.travelge.TravelgeInfoVo;
import kosta.web.model.vo.travelge.TravelgeLatestCommentVo;
import kosta.web.model.vo.travelge.TravelgeRecommandationVo;


public interface TravelgeService {
/*	travelgeInfoInsert 여행지등록 -member
	travelgeInfoUpdate 여행지수정 -등록자/관리자
	travelgeInfoDelete 여행지삭제 -등록자/관리자

	travelgeInfoSearch 부분/전체여행지조회 - 전체

	travelgeRecommandInsert 추천페이지등록 -관리자
	travelgeRecommandUpdate 추천페이지수정 -관리자
	travelgeRecommandDelete 추천페이지삭제 -관리자
	
	travelgeRecommandSearch 추천페이지조회 - 전체
	
	travelgeWishListAdd 여행지 찜 추가
	travelgeWishListDelete 여행지 찜 취소

	travelgeScoreInsert 별점 추가
	travelgeScoreUpdate 별점 수정


	searchAroundMe 내주변검색 -모든사용자*/
	
	int travelgeInfoInsert(TravelgeInfoVo travelgeInfoVo);
	
	int travelgeInfoUpdate(TravelgeInfoVo travelgeInfoVo);
	
	int travelgeInfoDelete(String contentCode);
	
	List<TravelgeInfoVo> travelgeInfoSearch(TravelgeInfoVo travelgeInfoVo, int currentPage);
	
	int travelgeRecommandInsert(TravelgeRecommandationVo travelgeRecommandationVo);
	
	int travelgeRecommandUpdate(TravelgeRecommandationVo travelgeRecommandationVo);
	
	int travelgeRecommandDelete(String contentCode, String title);
	
	List<TravelgeRecommandationVo> travelgeRecommandSearch(String contentCode);
	
	List<TravelgeRecommandationVo> travelgeRecommandSearch2(String contentCode, int currentPage);
	
	TravelgeRecommandationVo travelgeRecommandSearch3(String contentCode, String title);
	
	int travelgeWishListAdd(AvgScoreVo avgScoreVo);
	
	int travelgeWishListDelete(AvgScoreVo avgScoreVo);
	
	int travelgeScoreInsert(AvgScoreVo avgScoreVo);
	
	int travelgeScoreUpdate(AvgScoreVo avgScoreVo);
	
	List<TravelgeInfoVo> searchAroundMe(String lat, String lon);
	
	List<TravelgeInfoVo> travelgeSearchScroll(TravelgeInfoVo travelgeInfoVo, int currentPage, String keyword);

	 List<TravelgeLatestCommentVo> latestComment();
}