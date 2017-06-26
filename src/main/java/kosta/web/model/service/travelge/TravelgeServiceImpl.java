package kosta.web.model.service.travelge;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import kosta.web.model.dao.blog.UserBlogDAO;
import kosta.web.model.dao.travelge.TravelgeAvgScoreDAO;
import kosta.web.model.dao.travelge.TravelgeInfoDAO;
import kosta.web.model.dao.travelge.TravelgeRecommandationDAO;
import kosta.web.model.vo.AvgScoreVo;
import kosta.web.model.vo.UserVo;
import kosta.web.model.vo.travelge.TravelgeInfoVo;
import kosta.web.model.vo.travelge.TravelgeLatestCommentVo;
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
	@Autowired
	private UserBlogDAO userBlogDAO;

	@Override
	public int travelgeInfoInsert(TravelgeInfoVo travelgeInfoVo) {

		String contentCode = null;

		// �������ڵ� ����
		int ran = (int) (Math.random() * 10000 + 1);

		// �������ڵ� ����
		contentCode = "T" + travelgeInfoVo.getTravelgeTheme() + travelgeInfoVo.getTravelgeRegion() + ran;

		travelgeInfoVo.setContentCode(contentCode);

		// ������ �ڵ� �ߺ� üũ
		int i = 0;
		for (i = 0; i < travelgeInfoDAO.travelgeInfoSearch2(null, 0).size(); i++) {
			if (travelgeInfoDAO.travelgeInfoSearch2(travelgeInfoVo, 0).size() == 1) {
				ran = (int) (Math.random() * 10000 + 1);
				contentCode = "T" + travelgeInfoVo.getTravelgeTheme()
						+ travelgeInfoVo.getTravelgeRegion() + ran;
			} else {
				break;
			}
			;
		}

		// �׸� �ѱ۷� ��ȯ
		travelgeInfoVo.setTravelgeTheme(map.get(travelgeInfoVo.getTravelgeTheme()));

		// ���� �ѱ۷� ��ȯ
		travelgeInfoVo.setTravelgeRegion(map.get(travelgeInfoVo.getTravelgeRegion()));

		return travelgeInfoDAO.travelgeInfoInsert(travelgeInfoVo);
	}

	@Override
	public int travelgeInfoUpdate(TravelgeInfoVo travelgeInfoVo) {
		// �׸� �ѱ۷� ��ȯ
		travelgeInfoVo.setTravelgeTheme(map.get(travelgeInfoVo.getTravelgeTheme()));

		// ���� �ѱ۷� ��ȯ
		travelgeInfoVo.setTravelgeRegion(map.get(travelgeInfoVo.getTravelgeRegion()));

		return travelgeInfoDAO.travelgeInfoUpdate(travelgeInfoVo);
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

		List<TravelgeInfoVo> temp = travelgeInfoDAO.travelgeInfoSearch(travelgeInfoVo, currentPage);
		List<TravelgeInfoVo> newList = new ArrayList<>();

		for (TravelgeInfoVo dto : temp) {
			int point = dto.getTravelgeCoordinates().indexOf(',');
			int last = dto.getTravelgeCoordinates().indexOf(')');

			double tempLat = Double.parseDouble(dto.getTravelgeCoordinates().substring(1, point));
			double tempLon = Double.parseDouble(dto.getTravelgeCoordinates().substring(point + 2, last));

			dto.setX(tempLat + "");
			dto.setY(tempLon + "");

			// ���� ��������
			AvgScoreVo avgScore = travelgeAvgScoreDAO.travelgeAvgScore(dto.getContentCode());
			
			if (avgScore == null) { 

				avgScore = new AvgScoreVo();
				avgScore.setScore(0.0);
				avgScore.setPersonCount(0);
			}
			

			if(!SecurityContextHolder.getContext().getAuthentication().getPrincipal().equals("anonymousUser"))
			{
				//���ƿ� ��������
				AvgScoreVo dupl = new AvgScoreVo();
				if(dto.getContentCode() != null)
				{
					dupl = travelgeAvgScoreDAO.scoreDuplicate(dto.getContentCode());
				}

				UserVo user = (UserVo) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
				String id = user.getId();
				
				if(dupl != null &&dupl.getContentCode() != null)
				{
					dupl.setId(id);
					if(travelgeAvgScoreDAO.travelgeWishListSelect(dupl).size()!=0)
					{
	
						dto.setWish_list(travelgeAvgScoreDAO.travelgeWishListSelect(dupl).get(0).getWish_list());
					}
				}
				
			}
			dto.setAvgScoreVo(avgScore);

			newList.add(dto);

		}
		return newList;

	}

	@Override
	public int travelgeRecommandInsert(TravelgeRecommandationVo travelgeRecommandationVo) {

		return travelgeRecommandationDAO.travelgeRecommandInsert(travelgeRecommandationVo);
	}

	@Override
	public int travelgeRecommandUpdate(TravelgeRecommandationVo travelgeRecommandationVo) {

		return travelgeRecommandationDAO.travelgeRecommandUpdate(travelgeRecommandationVo);
	}

	@Override
	public int travelgeRecommandDelete(String contentCode, String title) {

		return travelgeRecommandationDAO.travelgeRecommandDelete(contentCode, title);
	}

	@Override
	public List<TravelgeRecommandationVo> travelgeRecommandSearch(String contentCode) {

		return travelgeRecommandationDAO.travelgeRecommandSearch(contentCode);
	}

	@Override
	public int travelgeWishListUpdate(String id, String contentCode) {

		AvgScoreVo avgScoreVo = new AvgScoreVo(id, contentCode);
		List<AvgScoreVo> temp = travelgeAvgScoreDAO.travelgeWishListSelect(avgScoreVo);

		int result;
		if (temp != null && temp.size() != 0) {
			if (temp.get(0).getWish_list() == 0) {
				travelgeAvgScoreDAO.travelgeWishListUpdate(id, contentCode, 1);
				result = 1;
				//System.out.println("update1");
			} else {
				travelgeAvgScoreDAO.travelgeWishListUpdate(id, contentCode, 0);
				result = 0;
				//System.out.println("update0");
			}
		} else {
			travelgeAvgScoreDAO.travelgeWishListInsert(id, contentCode);
			//System.out.println("insert1");
			result = 1;
		}

		return result;
	}

	@Override
	public List<AvgScoreVo> travelgeWishListSelect(AvgScoreVo avgScoreVo) {
		return travelgeAvgScoreDAO.travelgeWishListSelect(avgScoreVo);
	}

	@Override
	public int travelgeScoreInsert(String id, String contentCode, double score) {
		// TODO Auto-generated method stub
		return travelgeAvgScoreDAO.travelgeScoreInsert(id, contentCode, score);
	}

	@Override
	public int travelgeScoreUpdate(String id, String contentCode, double score) {
		// TODO Auto-generated method stub
		return travelgeAvgScoreDAO.travelgeScoreUpdate(id, contentCode, score);
	}

	static final double bound = 0.025;

	@Override
	public List<TravelgeInfoVo> searchAroundMe(String lat, String lon) {
		List<TravelgeInfoVo> temp = travelgeInfoDAO.searchAroundMe();
		List<TravelgeInfoVo> newList = new ArrayList<>();

		double doubleLat = Double.parseDouble(lat);
		double doubleLon = Double.parseDouble(lon);
		for (TravelgeInfoVo dto : temp) {
			int point = dto.getTravelgeCoordinates().indexOf(',');
			int last = dto.getTravelgeCoordinates().indexOf(')');
			double tempLat = Double.parseDouble(dto.getTravelgeCoordinates().substring(1, point));
			double tempLon = Double.parseDouble(dto.getTravelgeCoordinates().substring(point + 2, last));

			if (doubleLat + bound > tempLat && doubleLat - bound < tempLat) {
				if (doubleLon + bound > tempLon && doubleLon - bound < tempLon) {
					dto.setX(tempLat + "");
					dto.setY(tempLon + "");
					newList.add(dto);
				}
			}
		}
		return newList;
	}

	@Override
	public List<TravelgeInfoVo> travelgeSearchScroll(TravelgeInfoVo travelgeInfoVo, int currentPage,
			String keyword) {

		if (currentPage == 1) {
			currentPage = 0;
		} else {
			currentPage = (currentPage * 10) - 10;
		}

		List<TravelgeInfoVo> temp = travelgeInfoDAO.travelgeSearchScroll(travelgeInfoVo, currentPage, keyword);
		List<TravelgeInfoVo> newList = new ArrayList<>();
		
		for (TravelgeInfoVo dto : temp) {
			// ���� ��������
			AvgScoreVo avgScore = travelgeAvgScoreDAO.travelgeAvgScore(dto.getContentCode());
			if (avgScore == null) {
				avgScore = new AvgScoreVo();
				avgScore.setScore(0.0);
				avgScore.setPersonCount(0);
			}
			if(!SecurityContextHolder.getContext().getAuthentication().getPrincipal().equals("anonymousUser"))
			{
				UserVo user = (UserVo) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
				String id = user.getId();
				avgScore.setId(id);
				if(travelgeAvgScoreDAO.travelgeWishListSelect(avgScore).size() != 0)
				{
					dto.setWish_list(travelgeAvgScoreDAO.travelgeWishListSelect(avgScore).get(0).getWish_list());
				}
			}
			dto.setAvgScoreVo(avgScore);

			newList.add(dto);

		}								
		return newList;		
	}

	@Override
	public List<TravelgeLatestCommentVo> latestComment() {
		List<TravelgeLatestCommentVo> list = travelgeInfoDAO.latestComment();
		for (TravelgeLatestCommentVo dto : list) {
			dto.setUserPic(userBlogDAO.userPicBlog(dto.getContentCode(), dto.getId()));
		}

		return travelgeInfoDAO.latestComment();
	}

	@Override
	public List<TravelgeRecommandationVo> travelgeRecommandSearch2(String contentCode, int currentPage) {
		if (currentPage == 1) {
			currentPage = 0;
		} else {
			currentPage = (currentPage * 10) - 10;
		}

		return travelgeRecommandationDAO.travelgeRecommandSearch2(contentCode, currentPage);
	}

	@Override
	public TravelgeRecommandationVo travelgeRecommandSearch3(String contentCode, String title) {

		return travelgeRecommandationDAO.travelgeRecommandSearch3(contentCode, title);
	}

	@Override
	public AvgScoreVo selectUserScore(String contentCode, String id) {

		return travelgeAvgScoreDAO.selectUserScore(contentCode, id);
	}

	@Override
	public List<TravelgeInfoVo> travelgeInfoSearch2(TravelgeInfoVo travelgeInfoVo, int currentPage) {
		if (currentPage == 1) {
			currentPage = 0;
		} else {
			currentPage = (currentPage * 10) - 10;
		}

		List<TravelgeInfoVo> temp = travelgeInfoDAO.travelgeInfoSearch2(travelgeInfoVo, currentPage);
		List<TravelgeInfoVo> newList = new ArrayList<>();

		for (TravelgeInfoVo dto : temp) {
			int point = dto.getTravelgeCoordinates().indexOf(',');
			int last = dto.getTravelgeCoordinates().indexOf(')');

			double tempLat = Double.parseDouble(dto.getTravelgeCoordinates().substring(1, point));
			double tempLon = Double.parseDouble(dto.getTravelgeCoordinates().substring(point + 2, last));

			dto.setX(tempLat + "");
			dto.setY(tempLon + "");

			// ���� ��������
			AvgScoreVo avgScore = travelgeAvgScoreDAO.travelgeAvgScore(dto.getContentCode());
			if (avgScore == null) { 

				avgScore = new AvgScoreVo();
				avgScore.setScore(0.0);
				avgScore.setPersonCount(0);
			}

			if(!SecurityContextHolder.getContext().getAuthentication().getPrincipal().equals("anonymousUser"))
			{
				UserVo user = (UserVo) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
				String id = user.getId();
				avgScore.setId(id);
				if(travelgeAvgScoreDAO.travelgeWishListSelect(avgScore).size() != 0)
				{
					dto.setWish_list(travelgeAvgScoreDAO.travelgeWishListSelect(avgScore).get(0).getWish_list());
				}
			}
			dto.setAvgScoreVo(avgScore);

			newList.add(dto);

		}
		return newList;
	}

}
