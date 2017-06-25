package kosta.web.model.dao.enter;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosta.web.model.vo.AvgScoreVo;

@Repository
public class LookAvgScoreDAOImpl implements LookAvgScoreDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<AvgScoreVo> lookWishListSelect(AvgScoreVo avgScoreVo) {
		return sqlSession.selectList("LookAvgScoreMapper.selectWishList" , avgScoreVo);		
	}
	
	@Override
	public int lookWishListInsert(String id, String contentCode) {
		Map <Object, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("contentCode",contentCode);
		
		return sqlSession.insert("LookAvgScoreMapper.insertWishList", map);
	}

	@Override
	public int lookWishListUpdate(String id, String contentCode, int wishList) {
		Map <Object, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("contentCode",contentCode);
		map.put("wishList", wishList);

		return sqlSession.delete("lookAvgScoreMapper.updateWishList",map);
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
