package kosta.web.model.service.enter;

import java.util.ArrayList;
import java.util.List;

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
import kosta.web.model.vo.travelge.TravelgeInfoVo;

@Service
public class EnterServiceImpl implements EnterService {

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

}

