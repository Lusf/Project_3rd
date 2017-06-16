package kosta.web.model.service.travelge;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosta.web.model.dao.travelge.TravelgeAvgScoreDAO;
import kosta.web.model.dao.travelge.TravelgeInfoDAO;
import kosta.web.model.dao.travelge.TravelgeRecommandationDAO;
import kosta.web.model.vo.AvgScoreVo;
import kosta.web.model.vo.travelge.TravelgeInfoVo;
import kosta.web.model.vo.travelge.TravelgeRecommandationVo;


@Service
public class TravelgeServiceImpl implements TravelgeService {

	
	@Autowired
	private TravelgeInfoDAO travelgeInfoDAO;
	@Autowired
	private TravelgeRecommandationDAO travelgeRecommandationDAO;
	@Autowired
	private TravelgeAvgScoreDAO travelgeAvgScoreDAO;
	
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

	public List<TravelgeInfoVo> travelgeInfoSearch(TravelgeInfoVo travelgeInfoVo, int currentPage) {

		if(currentPage==1)
		{
			currentPage=0;
		}
		else
		{
			currentPage = (currentPage * 10) - 10;
		}

		List<TravelgeInfoVo> list = travelgeInfoDAO.travelgeInfoSearch(travelgeInfoVo, currentPage);
		
/*		for (TravelgeInfoVo str : list) {
			if(travelgeAvgScoreDAO.travelgeAvgScore(str.getAvgScoreVo().getContentCode()) != null)
			str.setAvgScoreVo(travelgeAvgScoreDAO.travelgeAvgScore(str.getAvgScoreVo().getContentCode()));
		}*/
		
		return list;
	}

	@Override
	public int travelgeRecommandInsert(TravelgeRecommandationVo travelgeRecommandationVo) {
		
		
		return travelgeRecommandationDAO.travelgeRecommandInsert(travelgeRecommandationVo);
	}

	@Override
	public int travelgeRecommandUpdate(TravelgeRecommandationVo travelgeRecommandationVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int travelgeRecommandDelete(String contentCode) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<TravelgeRecommandationVo> travelgeRecommandSearch(String contentCode) {
		
		return travelgeRecommandationDAO.travelgeRecommandSearch(contentCode);
	}

	@Override
	public int travelgeWishListAdd(AvgScoreVo avgScoreVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int travelgeWishListDelete(AvgScoreVo avgScoreVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int travelgeScoreInsert(AvgScoreVo avgScoreVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int travelgeScoreUpdate(AvgScoreVo avgScoreVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<TravelgeInfoVo> searchAroundMe(String travelgeRegion) {
		// TODO Auto-generated method stub
		return null;
	}

}
