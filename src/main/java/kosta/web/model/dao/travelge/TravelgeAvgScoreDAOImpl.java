package kosta.web.model.dao.travelge;

import java.util.HashMap;
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
	public int travelgeWishListAdd(AvgScoreVo avgScoreVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int travelgeWishListDelete(AvgScoreVo avgScoreVo) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public AvgScoreVo travelgeAvgScore(String contentCode) {
		
		return sqlSession.selectOne("travelgeAvgScoreMapper.selectScore", contentCode);
	}

	@Override
	public AvgScoreVo selectUserScore(String contentCode, String id) {
		// TODO Auto-generated method stub
		Map <Object, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("contentCode",contentCode);
//		System.out.println("id : " + id + "\tcontentCode : " + contentCode);
		AvgScoreVo temp = sqlSession.selectOne("travelgeAvgScoreMapper.selectUserScore", map);
//		System.out.println(temp.getScore());
		return temp;
	}

	@Override
	public int travelgeScoreInsert(String id, String contentCode, double score) {
		Map <Object, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("contentCode",contentCode);
		map.put("score", score);

		return sqlSession.insert("travelgeAvgScoreMapper.travelgeScoreInsert", map);
	}

	@Override
	public int travelgeScoreUpdate(String id, String contentCode, double score) {
		Map <Object, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("contentCode",contentCode);
		map.put("score", score);

		return sqlSession.insert("travelgeAvgScoreMapper.travelgeScoreUpdate", map);
	}

}
