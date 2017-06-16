package kosta.web.model.service.travelge;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	Map<String, String> map = new HashMap<>();

	public TravelgeServiceImpl() {

		map.put("TD", "������");
		map.put("LM", "����");
		map.put("CT", "��ȭ");
		map.put("LP", "������");
		//
		map.put("SU", "����");
		map.put("GG", "���/��õ");
		map.put("CB", "���/����");
		map.put("CN", "�泲/����");
		map.put("BS", "�λ�");
		map.put("KB", "���/�뱸");
		map.put("KN", "�泲/���");
		map.put("JB", "����");
		map.put("JN", "����/����");
		map.put("JJ", "����");
	}

	@Autowired
	private TravelgeInfoDAO travelgeInfoDAO;
	@Autowired
	private TravelgeRecommandationDAO travelgeRecommandationDAO;
	@Autowired
	private TravelgeAvgScoreDAO travelgeAvgScoreDAO;

	@Override
	public int travelgeInfoInsert(TravelgeInfoVo travelgeInfoVo) {

		String contentCode = null;

		// �������ڵ� ����
		int ran = (int) (Math.random() * 10000 + 1);

		// �������ڵ� ����
		contentCode = "T" + travelgeInfoVo.getTravelgeTheme() + travelgeInfoVo.getTravelgeRegion() + ran;
		System.out.println(contentCode);

		travelgeInfoVo.setContentCode(contentCode);

		// ������ �ڵ� �ߺ� üũ
		int i = 0;
		for (i = 0; i < travelgeInfoDAO.travelgeInfoSearch(null, 0).size(); i++) {
			if (travelgeInfoDAO.travelgeInfoSearch(travelgeInfoVo, 0).size() == 1) {
				ran = (int) (Math.random() * 10000 + 1);
				contentCode = "T" + travelgeInfoVo.getTravelgeTheme() + travelgeInfoVo.getTravelgeRegion() + ran;
			}else{
				break;
			};
		}

		// �׸� �ѱ۷� ��ȯ
		travelgeInfoVo.setTravelgeTheme(map.get(travelgeInfoVo.getTravelgeTheme()));

		// ���� �ѱ۷� ��ȯ
		travelgeInfoVo.setTravelgeRegion(map.get(travelgeInfoVo.getTravelgeRegion()));
		
		System.out.println(travelgeInfoVo.toString());
		
		return travelgeInfoDAO.travelgeInfoInsert(travelgeInfoVo);
	}

	@Override
	public int travelgeInfoUpdate(TravelgeInfoVo travelgeInfoVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int travelgeInfoDelete(String contentCode) {
		
		return travelgeInfoDAO.travelgeInfoDelete(contentCode);
	}

	@Override

	public List<TravelgeInfoVo> travelgeInfoSearch(TravelgeInfoVo travelgeInfoVo, int currentPage) {

		if (currentPage == 1) {
			currentPage = 0;
		} else {
			currentPage = (currentPage * 10) - 10;
		}

		List<TravelgeInfoVo> list = travelgeInfoDAO.travelgeInfoSearch(travelgeInfoVo, currentPage);

		/*
		 * for (TravelgeInfoVo str : list) {
		 * if(travelgeAvgScoreDAO.travelgeAvgScore(str.getAvgScoreVo().
		 * getContentCode()) != null)
		 * str.setAvgScoreVo(travelgeAvgScoreDAO.travelgeAvgScore(str.
		 * getAvgScoreVo().getContentCode())); }
		 */

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
