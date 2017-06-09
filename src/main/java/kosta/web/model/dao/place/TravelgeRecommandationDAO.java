package kosta.web.model.dao.place;

import java.util.List;

import kosta.web.model.vo.place.TravelgeRecommandationVo;

public interface TravelgeRecommandationDAO {
	/*
	travelgeRecommandInsert ��õ��������� -������
	travelgeRecommandUpdate ��õ���������� -������
	travelgeRecommandDelete ��õ���������� -������
	travelgeRecommandSearch ��õ��������ȸ - ��ü
	*/
	
	
	int travelgeRecommandInsert(TravelgeRecommandationVo travelgeRecommandationVo);
	
	int travelgeRecommandUpdate(TravelgeRecommandationVo travelgeRecommandationVo);
	
	int travelgeRecommandDelete(String contentCode);
	
	List<TravelgeRecommandationVo> travelgeRecommandSearch(String contentCode);
}