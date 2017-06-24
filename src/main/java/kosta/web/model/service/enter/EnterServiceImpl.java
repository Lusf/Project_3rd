package kosta.web.model.service.enter;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosta.web.model.dao.enter.EnterAdminInfoDAO;
import kosta.web.model.dao.enter.LGBoardCommentDAO;
import kosta.web.model.dao.enter.LookAvgScoreDAO;
import kosta.web.model.dao.enter.LookInfoDAO;
import kosta.web.model.dao.enter.LookgoodBoardDAO;
import kosta.web.model.vo.AvgScoreVo;
import kosta.web.model.vo.enter.LGBoardCommentVo;
import kosta.web.model.vo.enter.LookInfoVo;
import kosta.web.model.vo.enter.LookgoodBoardVo;

@Service
public class EnterServiceImpl implements EnterService {

	Map<String, String> map = new HashMap<>();

	public EnterServiceImpl() {
		map.put("M", "영화");
		map.put("T", "TV");
		map.put("P", "공연/연극");

		map.put("1", "멜로/로맨스");
		map.put("2", "코미디");
		map.put("3", "SF");
		map.put("4", "애니메이션");
		map.put("5", "스릴러/미스테리");
		map.put("6", "액션");
		map.put("7", "공포/호러");

		map.put("A", "전체");
		map.put("B", "12세");
		map.put("C", "15세");
		map.put("D", "청불");
	}

	@Autowired
	LookInfoDAO lookInfoDAO;

	@Autowired
	LookgoodBoardDAO lookgoodBoardDAO;

	@Autowired
	LGBoardCommentDAO lGBoardCommentDAO;

	@Autowired
	LookAvgScoreDAO lookAvgScoreDAO;

	@Autowired
	EnterAdminInfoDAO enterAdminInfoDAO;

	@Override
	public int lookInfoInsert(LookInfoVo lookInfoVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int lookInfoUpdate(LookInfoVo lookInfoVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int lookInfoDelete(String contentCode) {
		return 0;
	}

	@Override
	public int lookgoodBoardInsert(LookgoodBoardVo lookgoodBoardVo) {
		return lookgoodBoardDAO.lookgoodBoardInsert(lookgoodBoardVo);
	}

	@Override
	public int lookgoodBoardUpdate(LookgoodBoardVo lookgoodBoardVo) {
		return lookgoodBoardDAO.lookgoodBoardUpdate(lookgoodBoardVo);
	}

	@Override
	public int lookgoodBoardDelete(LookgoodBoardVo lookgoodBoardVo) {
		return lookgoodBoardDAO.lookgoodBoardDelete(lookgoodBoardVo);
	}

	@Override
	public List<LookgoodBoardVo> lookgoodBoardSearchAll() {
		return lookgoodBoardDAO.lookgoodBoardSearchAll();
	}

	@Override
	public LookgoodBoardVo lookgoodBoardSearchByNum(int lgbNum) {
		return lookgoodBoardDAO.lookgoodBoardSearchByNum(lgbNum);
	}

	@Override
	public int lGBoardCommentInsert(LGBoardCommentVo lgBoardCommentVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int lGBoardCommentUpdate(LGBoardCommentVo lgBoardCommentVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int lGBoardCommentDelete(int lgbcomNum) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int lookWishListAdd(AvgScoreVo avgScoreVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int lookWishListDelete(AvgScoreVo avgScoreVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int lookScoreInsert(AvgScoreVo avgScoreVo) {

		return lookAvgScoreDAO.lookScoreInsert(avgScoreVo);
	}

	@Override
	public int lookScoreUpdate(AvgScoreVo avgScoreVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<LookInfoVo> lookInfoSearch(LookInfoVo lookInfoVo) {
	
		return lookInfoDAO.lookInfoSearch(lookInfoVo);
	}

	@Override
	public LookInfoVo lookInfoSearchByCode(String contentCode) {

		return lookInfoDAO.lookInfoSearchByCode(contentCode);
	}
	

	@Override
	public List<LookInfoVo> lookInfoSearchByCate(String lookCate) {
		
		return lookInfoDAO.lookInfoSearchByCate(lookCate);
	}	

	@Override
	public List<LookInfoVo> lookInfoSearchByGenre(String lookGenre) {
		
		return lookInfoDAO.lookInfoSearchByGenre(lookGenre);
	}
	
	@Override
	public List<LookInfoVo> lookInfoSearchByNewList() {
		
		return lookInfoDAO.lookInfoSearchByNewList();
	}
	
	@Override
	public List<LookInfoVo> enterSearch(LookInfoVo lookInfoVo, String searchYear, String searchMonth) {
		// 카테고리 한글로 변환
		lookInfoVo.setLookCate(map.get(lookInfoVo.getLookCate()));

		// 장르 한글로 변환
		lookInfoVo.setLookGenre(map.get(lookInfoVo.getLookGenre()));

		// 연령등급 한글로 변환
		lookInfoVo.setLookAge(map.get(lookInfoVo.getLookAge()));
		
		return lookInfoDAO.enterSearch(lookInfoVo, searchYear, searchMonth);
	}
	
	
	
	
	
	/** enter admin search */
	@Override
	public List<LookInfoVo> enterInfoSearch(LookInfoVo lookInfoVo, int currentPage) {
		if (currentPage == 1) {
			currentPage = 0;
		} else {
			currentPage = (currentPage * 10) - 10;
		}

		List<LookInfoVo> list = enterAdminInfoDAO.enterInfoSearch(lookInfoVo, currentPage);
		return list;
	}

	@Override
	public int enterInfoDelete(String contentCode) {
		return enterAdminInfoDAO.enterInfoDelete(contentCode);
	}

	@Override
	public int enterInfoInsert(LookInfoVo lookInfoVo) {
		String contentCode = null;

		// 컨텐츠코드 난수
		int ran = (int) (Math.random() * 10000 + 1);

		// 컨텐츠코드 생성
		contentCode = "B" + lookInfoVo.getLookCate() + lookInfoVo.getLookGenre() + lookInfoVo.getLookAge() + ran;

		lookInfoVo.setContentCode(contentCode);

		// 컨텐츠 코드 중복 체크
		int i = 0;
		for (i = 0; i < enterAdminInfoDAO.enterInfoSearch(null, 0).size(); i++) {
			if (enterAdminInfoDAO.enterInfoSearch(lookInfoVo, 0).size() == 1) {
				ran = (int) (Math.random() * 10000 + 1);
				contentCode = "B" + lookInfoVo.getLookCate() + lookInfoVo.getLookGenre() + lookInfoVo.getLookAge()
						+ ran;
			} else {
				break;
			}
		}

		// 카테고리 한글로 변환
		lookInfoVo.setLookCate(map.get(lookInfoVo.getLookCate()));

		// 장르 한글로 변환
		lookInfoVo.setLookGenre(map.get(lookInfoVo.getLookGenre()));

		// 연령등급 한글로 변환
		lookInfoVo.setLookAge(map.get(lookInfoVo.getLookAge()));

		if (lookInfoVo.getLookLoca().equals("")) {
			lookInfoVo.setLookLoca("정보없음");
		}
		if (lookInfoVo.getX() == null || lookInfoVo.getY() == null) {
			lookInfoVo.setX("0");
			lookInfoVo.setY("0");
		}

		return enterAdminInfoDAO.enterInfoInsert(lookInfoVo);
	}

	@Override
	public int enterInfoUpdate(LookInfoVo lookInfoVo) {
		// 카테고리 한글로 변환
		lookInfoVo.setLookCate(map.get(lookInfoVo.getLookCate()));

		// 장르 한글로 변환
		lookInfoVo.setLookGenre(map.get(lookInfoVo.getLookGenre()));

		// 연령등급 한글로 변환
		lookInfoVo.setLookAge(map.get(lookInfoVo.getLookAge()));

		if (lookInfoVo.getLookLoca().equals("")) {
			lookInfoVo.setLookLoca("정보없음");
		}
		if (lookInfoVo.getX() == null || lookInfoVo.getY() == null) {
			lookInfoVo.setX("0");
			lookInfoVo.setY("0");
		}

		return enterAdminInfoDAO.enterInfoUpdate(lookInfoVo);
	}





}
