package kosta.web.model.dao.travelge;

import java.util.List;

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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int travelgeRecommandDelete(String contentCode) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<TravelgeRecommandationVo> travelgeRecommandSearch(String contentCode) {
		
		return sqlSession.selectList("travelgeRecommandationMapper.travelgeRecommandSearch", contentCode);
	}

}
