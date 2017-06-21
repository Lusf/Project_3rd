package kosta.web.model.service.travelge;

import java.util.List;

import kosta.web.model.vo.AvgScoreVo;
import kosta.web.model.vo.travelge.TravelgeInfoVo;
import kosta.web.model.vo.travelge.TravelgeLatestCommentVo;
import kosta.web.model.vo.travelge.TravelgeRecommandationVo;


public interface TravelgeService {
/*	travelgeInfoInsert ��������� -member
	travelgeInfoUpdate ���������� -�����/������
	travelgeInfoDelete ���������� -�����/������

	travelgeInfoSearch �κ�/��ü��������ȸ - ��ü

	travelgeRecommandInsert ��õ��������� -������
	travelgeRecommandUpdate ��õ���������� -������
	travelgeRecommandDelete ��õ���������� -������
	
	travelgeRecommandSearch ��õ��������ȸ - ��ü
	
	travelgeWishListAdd ������ �� �߰�
	travelgeWishListDelete ������ �� ���

	travelgeScoreInsert ���� �߰�
	travelgeScoreUpdate ���� ����


	searchAroundMe ���ֺ��˻� -�������*/
	
	int travelgeInfoInsert(TravelgeInfoVo travelgeInfoVo);
	
	int travelgeInfoUpdate(TravelgeInfoVo travelgeInfoVo);
	
	int travelgeInfoDelete(String contentCode);
	
	List<TravelgeInfoVo> travelgeInfoSearch(TravelgeInfoVo travelgeInfoVo, int currentPage);
	
	int travelgeRecommandInsert(TravelgeRecommandationVo travelgeRecommandationVo);
	
	int travelgeRecommandUpdate(TravelgeRecommandationVo travelgeRecommandationVo);
	
	int travelgeRecommandDelete(String contentCode, String title);
	
	List<TravelgeRecommandationVo> travelgeRecommandSearch(String contentCode);
	
	List<TravelgeRecommandationVo> travelgeRecommandSearch2(String contentCode, int currentPage);
	
	TravelgeRecommandationVo travelgeRecommandSearch3(String contentCode, String title);
	
	int travelgeWishListAdd(AvgScoreVo avgScoreVo);
	
	int travelgeWishListDelete(AvgScoreVo avgScoreVo);
	
	int travelgeScoreInsert(AvgScoreVo avgScoreVo);
	
	int travelgeScoreUpdate(AvgScoreVo avgScoreVo);
	
	List<TravelgeInfoVo> searchAroundMe(String lat, String lon);
	
	List<TravelgeInfoVo> travelgeSearchScroll(TravelgeInfoVo travelgeInfoVo, int currentPage, String keyword);

	 List<TravelgeLatestCommentVo> latestComment();
}