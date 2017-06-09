package kosta.web.model.dao.travelge;

import java.util.List;

import kosta.web.model.vo.travelge.TravelgeInfoVo;

public interface TravelgeInfoDAO {
/*travelgeInfoInsert ��������� -member
	travelgeInfoUpdate ���������� -�����/������
	travelgeInfoDelete ���������� -�����/������

	travelgeInfoSearch �κ�/��ü��������ȸ - ��ü

	searchAroundMe ���ֺ��˻� -�������*/
	
	
	int travelgeInfoInsert(TravelgeInfoVo travelgeInfoVo);
	
	int travelgeInfoUpdate(TravelgeInfoVo travelgeInfoVo);
	
	int travelgeInfoDelete(String contentCode);
	
	List<TravelgeInfoVo> travelgeInfoSearch(TravelgeInfoVo travelgeInfoVo);
	
	List<TravelgeInfoVo> searchAroundMe(String travelgeRegion);
}