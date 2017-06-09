package kosta.web.model.dao.travelge;

import java.util.List;

import kosta.web.model.vo.travelge.TravelgeRecommandationVo;

public interface TravelgeRecommandationDAO {
	/*
	travelgeRecommandInsert 추천페이지등록 -관리자
	travelgeRecommandUpdate 추천페이지수정 -관리자
	travelgeRecommandDelete 추천페이지삭제 -관리자
	travelgeRecommandSearch 추천페이지조회 - 전체
	*/
	
	
	int travelgeRecommandInsert(TravelgeRecommandationVo travelgeRecommandationVo);
	
	int travelgeRecommandUpdate(TravelgeRecommandationVo travelgeRecommandationVo);
	
	int travelgeRecommandDelete(String contentCode);
	
	List<TravelgeRecommandationVo> travelgeRecommandSearch(String contentCode);
}