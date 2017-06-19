package kosta.web.model.dao.travelge;

import java.util.List;

import kosta.web.model.vo.blog.UserBlogVo;
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
	
	List<TravelgeInfoVo> travelgeInfoSearch(TravelgeInfoVo travelgeInfoVo, int currentPage);
	
	List<TravelgeInfoVo> searchAroundMe();
	
	List<TravelgeInfoVo> travelgeSearchScroll(TravelgeInfoVo travelgeInfoVo, int currentPage, String keyword);
	
//	List<UserBlogVo> latestComment();
	List<TravelgeInfoVo> latestComment();
}