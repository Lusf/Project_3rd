package kosta.web.model.dao.travelge;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosta.web.model.vo.AvgScoreVo;

@Repository
public class TravelgeAvgScoreDAOImpl implements TravelgeAvgScoreDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int travelgeWishListUpdate(String id, String contentCode, int wishList) {
		Map <Object, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("contentCode",contentCode);
		map.put("wishList", wishList);

		return sqlSession.delete("travelgeAvgScoreMapper.updateWishList",map);
	}

	@Override
	public int travelgeWishListInsert(String id, String contentCode) {
		Map <Object, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("contentCode",contentCode);
			
		return sqlSession.insert("travelgeAvgScoreMapper.insertWishList",map);
	}
	@Override
	public List<AvgScoreVo> travelgeWishListSelect(AvgScoreVo avgScoreVo) {

		List<AvgScoreVo> list = sqlSession.selectList("travelgeAvgScoreMapper.travelgeWishListSelect",avgScoreVo);

		
		return list;
	}
	

	@Override
	public AvgScoreVo travelgeAvgScore(String contentCode) {
		
		return sqlSession.selectOne("travelgeAvgScoreMapper.selectScore", contentCode);
	}

	@Override
	public AvgScoreVo selectUserScore(String contentCode, String id) {

		Map <Object, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("contentCode",contentCode);
		AvgScoreVo temp = sqlSession.selectOne("travelgeAvgScoreMapper.selectUserScore", map);
		return temp;
	}

	@Override
	public int travelgeScoreInsert(String id, String contentCode, double score) {
		Map <Object, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("contentCode",contentCode);
		map.put("score", score);

		int result = sqlSession.insert("travelgeAvgScoreMapper.travelgeScoreInsert", map);
		return result;
	}

	@Override
	public int travelgeScoreUpdate(String id, String contentCode, double score) {
		Map <Object, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("contentCode",contentCode);
		map.put("score", score);

		return sqlSession.insert("travelgeAvgScoreMapper.travelgeScoreUpdate", map);
	}

	@Override
	public AvgScoreVo scoreDuplicate(String contentCode) {

		return sqlSession.selectOne("travelgeAvgScoreMapper.scoreDuplicate", contentCode);
	}




}
