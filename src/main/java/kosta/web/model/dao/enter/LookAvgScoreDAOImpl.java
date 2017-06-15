package kosta.web.model.dao.enter;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosta.web.model.vo.AvgScoreVo;

@Repository
public class LookAvgScoreDAOImpl implements LookAvgScoreDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int lookWishListAdd(AvgScoreVo avgScoreVo) {
		
		return 0;
	}

	@Override
	public int lookWishListDelete(AvgScoreVo avgScoreVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int lookScoreInsert(AvgScoreVo avgScoreVo) {
		
		return sqlSession.insert("LookAvgScoreMapper.insertScore", avgScoreVo);
	}

	@Override
	public int lookScoreUpdate(AvgScoreVo avgScoreVo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
