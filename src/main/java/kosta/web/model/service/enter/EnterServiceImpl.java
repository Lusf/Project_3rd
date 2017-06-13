package kosta.web.model.service.enter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

	@Autowired
	LookInfoDAO lookInfoDAO;
	
	@Autowired
	LookgoodBoardDAO lookgoodBoardDAO;
	
	@Autowired
	LGBoardCommentDAO lGBoardCommentDAO;
	
	@Autowired
	LookAvgScoreDAO lookAvgScoreDAO;
	
	
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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int lookgoodBoardUpdate(LookgoodBoardVo lookgoodBoardVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int lookgoodBoardDelete(int lgbNum) {
		return lookgoodBoardDAO.lookgoodBoardDelete(lgbNum);
	}

	@Override
	public List<LookgoodBoardVo> lookgoodBoardSearchAll() {
		return lookgoodBoardDAO.lookgoodBoardSearchAll();
	}

	@Override
	public LookgoodBoardVo lookgoodBoardSearchByNum(int lgnNum) {
		return lookgoodBoardDAO.lookgoodBoardSearchByNum(lgnNum);
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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int lookScoreUpdate(AvgScoreVo avgScoreVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<LookInfoVo> lookInfoSearch(LookInfoVo lookInfoVo) {
		// TODO Auto-generated method stub
		return null;
	}

}
