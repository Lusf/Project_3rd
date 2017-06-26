package kosta.web.model.dao.travelge;

import java.util.List;

import kosta.web.model.vo.travelge.TravelgeInfoVo;
import kosta.web.model.vo.travelge.TravelgeLatestCommentVo;

public interface TravelgeInfoDAO {
/*travelgeInfoInsert 여행지등록 -member
	travelgeInfoUpdate 여행지수정 -등록자/관리자
	travelgeInfoDelete 여행지삭제 -등록자/관리자

	travelgeInfoSearch 부분/전체여행지조회 - 전체

	searchAroundMe 내주변검색 -모든사용자*/
	
	
	int travelgeInfoInsert(TravelgeInfoVo travelgeInfoVo);
	
	int travelgeInfoUpdate(TravelgeInfoVo travelgeInfoVo);
	
	int travelgeInfoDelete(String contentCode);
	
	List<TravelgeInfoVo> travelgeInfoSearch(TravelgeInfoVo travelgeInfoVo, int currentPage);
	
	List<TravelgeInfoVo> travelgeInfoSearch2(TravelgeInfoVo travelgeInfoVo, int currentPage);
	
	List<TravelgeInfoVo> searchAroundMe();
	
	List<TravelgeInfoVo> travelgeSearchScroll(TravelgeInfoVo travelgeInfoVo, int currentPage, String keyword);
	
	List<TravelgeLatestCommentVo> latestComment();
}