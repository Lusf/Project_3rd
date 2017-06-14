package kosta.web.model.dao.enter;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosta.web.model.vo.enter.LookgoodBoardVo;

@Repository
public class LookgoodBoardDAOImpl implements LookgoodBoardDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int lookgoodBoardInsert(LookgoodBoardVo lookgoodBoardVo) {
		return sqlSession.insert("lookgoodBoardMapper.boardInsert", lookgoodBoardVo);
	}

	@Override
	public int lookgoodBoardUpdate(LookgoodBoardVo lookgoodBoardVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int lookgoodBoardDelete(int lgbNum) {
		return sqlSession.delete("lookgoodBoardMapper.boardDelete", lgbNum);
	}

	@Override
	public List<LookgoodBoardVo> lookgoodBoardSearchAll() {
		return sqlSession.selectList("lookgoodBoardMapper.boardSelect");
	}

	@Override
	public LookgoodBoardVo lookgoodBoardSearchByNum(int lgbNum) {
		
		return sqlSession.selectOne("lookgoodBoardMapper.boardSelectByNum", lgbNum);
	}

}
