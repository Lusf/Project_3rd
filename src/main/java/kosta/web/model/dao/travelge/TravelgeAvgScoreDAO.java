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
	
	int travelgeScoreInsert(String id, String contentCode, double score);
	
	int travelgeScoreUpdate(String id, String contentCode, double score);
	
	AvgScoreVo travelgeAvgScore(String contentCode);
	
	AvgScoreVo selectUserScore(String contentCode, String id);
}