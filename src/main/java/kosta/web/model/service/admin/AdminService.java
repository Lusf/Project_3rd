package kosta.web.model.service.admin;

import java.util.List;

import kosta.web.model.vo.ChartVo;

public interface AdminService {
	/**
	 * 가입자 수 count
	 */
	ChartVo selectUserCount();
	/**
	 * 가입자 수 insert
	 */
	int insertUserCount();
	/**
	 * 여행지 컨텐츠 수
	 */
	int selectTravelgeCount();
	/**
	 * 먹거리 컨텐츠 수
	 */
	int selectFoodCount();
	/**
	 * 볼거리 컨텐츠 수
	 */
	int selectLookCount();
	
	/**
	 * 최신리뷰 (하루 기준) count
	 */
	int latestReviewCount();
	
	/**
	 * 좋아요 순위
	 */
	List<ChartVo> wishListRank();
	
	/**
	 * 평점 순위
	 */
	List<ChartVo> scoreRank();

	/**
	 * 누적 가입자 수
	 */
	List<ChartVo> totalUserCount();
}
