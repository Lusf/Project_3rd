package kosta.web.model.dao.place;

import java.util.List;

import org.springframework.stereotype.Repository;

import kosta.web.model.vo.place.TravelgeInfoVo;


@Repository
public class TravelgeInfoDAOImpl implements TravelgeInfoDAO {

	@Override
	public int travelgeInfoInsert(TravelgeInfoVo travelgeInfoVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int travelgeInfoUpdate(TravelgeInfoVo travelgeInfoVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int travelgeInfoDelete(String contentCode) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<TravelgeInfoVo> travelgeInfoSearch(TravelgeInfoVo travelgeInfoVo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TravelgeInfoVo> searchAroundMe(String travelgeRegion) {
		// TODO Auto-generated method stub
		return null;
	}

}
