package kosta.web.model.service.admin;

import java.util.List;

import kosta.web.model.vo.ChartVo;

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
