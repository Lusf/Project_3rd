package kosta.web.model.dao.travelge;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosta.web.model.vo.travelge.TravelgeRecommandationVo;

@Repository
public class TravelgeRecommandationDAOImpl implements TravelgeRecommandationDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int travelgeRecommandInsert(TravelgeRecommandationVo travelgeRecommandationVo) {

		return sqlSession.insert("travelgeRecommandationMapper.recommadationInsert", travelgeRecommandationVo);
	}

	@Override
	public int travelgeRecommandUpdate(TravelgeRecommandationVo travelgeRecommandationVo) {
		
		return sqlSession.update("travelgeRecommandationMapper.travelgeRecommandUpdate", travelgeRecommandationVo);
	}

	@Override
	public int travelgeRecommandDelete(String contentCode, String title) {
		Map<String, String> map = new HashMap<>();
		
		map.put("contentCode", contentCode);
		map.put("title", title);
		
		return sqlSession.delete("travelgeRecommandationMapper.travelgeRecommandDelete", map);
	}

	@Override
	public List<TravelgeRecommandationVo> travelgeRecommandSearch(String contentCode) {
		
		return sqlSession.selectList("travelgeRecommandationMapper.travelgeRecommandSearch", contentCode);
	}

	@Override
	public List<TravelgeRecommandationVo> travelgeRecommandSearch2(String contentCode, int currentPage) {
		
		return sqlSession.selectList("travelgeRecommandationMapper.travelgeRecommandSearch2",contentCode, new RowBounds(currentPage, 10));
	}
	@Override
	public TravelgeRecommandationVo travelgeRecommandSearch3(String contentCode, String title) {
		Map<String, String> map = new HashMap<>();
		map.put("contentCode", contentCode);
		map.put("title", title);
		
		return sqlSession.selectOne("travelgeRecommandationMapper.travelgeRecommandSearch3",map);
	}


}
