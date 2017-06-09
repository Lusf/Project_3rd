package kosta.web.model.dao.travelge;

import kosta.web.model.vo.AvgScoreVo;

public interface TravelgeAvgScoreDAO {
/*
	travelgeWishListAdd ������ �� �߰�
	travelgeWishListDelete ������ �� ���

	travelgeScoreInsert ���� �߰�
	travelgeScoreUpdate ���� ����
	travelgeAvgScore ��� ���� ���
	travelgeScore �����غ���
	*/
	
	int travelgeWishListAdd(AvgScoreVo avgScoreVo);
	
	int travelgeWishListDelete(AvgScoreVo avgScoreVo);
	
	int travelgeScoreInsert(AvgScoreVo avgScoreVo);
	
	int travelgeScoreUpdate(AvgScoreVo avgScoreVo);
	
	AvgScoreVo travelgeAvgScore(String contentCode);
	
	AvgScoreVo travelgeScore(AvgScoreVo avgScoreVo);
}