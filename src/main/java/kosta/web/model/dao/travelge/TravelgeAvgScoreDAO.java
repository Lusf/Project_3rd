package kosta.web.model.dao.travelge;

import java.util.List;

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
	
	int travelgeWishListInsert(String id, String contentCode);
	
	int travelgeWishListUpdate(String id, String contentCode, int wishList);
	
	List<AvgScoreVo> travelgeWishListSelect(AvgScoreVo avgScoreVo);
	
	int travelgeScoreInsert(String id, String contentCode, double score);
	
	int travelgeScoreUpdate(String id, String contentCode, double score);
	
	AvgScoreVo travelgeAvgScore(String contentCode);
	
	AvgScoreVo scoreDuplicate(String contentCode);
	
	AvgScoreVo selectUserScore(String contentCode, String id);
}