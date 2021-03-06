package kosta.web.model.dao.admin;

import java.util.List;

import kosta.web.model.vo.ChartVo;
import kosta.web.model.vo.blog.UserBlogVo;

public interface AdminDAO {

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
	 * 최신 리뷰 리스트
	 */
	List<UserBlogVo> latestSelect();
	/**
	 * 좋아요 순위
	 */
	List<ChartVo> wishListRank();
	/**
	 * 평점 순위
	 */
	List<ChartVo> scoreRank();
	
	
	/**
	 * 누적 가입자수 (그래프)
	 */
	List<ChartVo> totalUserCount();
	
}
