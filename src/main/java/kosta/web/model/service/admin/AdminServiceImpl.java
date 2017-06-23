package kosta.web.model.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosta.web.model.dao.admin.AdminDAO;
import kosta.web.model.vo.ChartVo;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDAO adminDAO;
	
	@Override
	public ChartVo selectUserCount() {

		return adminDAO.selectUserCount();
	}

	@Override
	public int insertUserCount() {
		return adminDAO.insertUserCount();
	}

	@Override
	public int selectTravelgeCount() {
		return adminDAO.selectTravelgeCount();
	}

	@Override
	public int selectFoodCount() {
		return adminDAO.selectFoodCount();
	}

	@Override
	public int selectLookCount() {
		return adminDAO.selectLookCount();
	}

	@Override
	public int latestReviewCount() {
		return adminDAO.latestReviewCount();
	}

	@Override
	public List<ChartVo> wishListRank() {
		return adminDAO.wishListRank();
	}

	@Override
	public List<ChartVo> totalUserCount() {

		return adminDAO.totalUserCount();
	}

	@Override
	public List<ChartVo> scoreRank() {
		return adminDAO.scoreRank();
	}

}
