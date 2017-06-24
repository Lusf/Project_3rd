package kosta.web.model.service.admin;

import java.util.List;

import kosta.web.model.vo.ChartVo;
import kosta.web.model.vo.blog.UserBlogVo;

public interface AdminService {
	/**
	 * ������ �� count
	 */
	ChartVo selectUserCount();
	/**
	 * ������ �� insert
	 */
	int insertUserCount();
	/**
	 * ������ ������ ��
	 */
	int selectTravelgeCount();
	/**
	 * �԰Ÿ� ������ ��
	 */
	int selectFoodCount();
	/**
	 * ���Ÿ� ������ ��
	 */
	int selectLookCount();
	
	/**
	 * �ֽŸ��� (�Ϸ� ����) count
	 */
	int latestReviewCount();
	
	/**
	 * �ֽ� ���� ����Ʈ
	 */
	List<UserBlogVo> latestSelect();
	/**
	 * ���ƿ� ����
	 */
	List<ChartVo> wishListRank();
	
	/**
	 * ���� ����
	 */
	List<ChartVo> scoreRank();

	/**
	 * ���� ������ ��
	 */
	List<ChartVo> totalUserCount();
}
