package kosta.web.model.dao.travelge;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosta.web.model.vo.travelge.TravelgeInfoVo;
import kosta.web.model.vo.travelge.TravelgeLatestCommentVo;

@Repository
public class TravelgeInfoDAOImpl implements TravelgeInfoDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int travelgeInfoInsert(TravelgeInfoVo travelgeInfoVo) {
		
		return sqlSession.insert("travelgeInfoMapper.travelgeInfoInsert", travelgeInfoVo);
	}

	@Override
	public int travelgeInfoUpdate(TravelgeInfoVo travelgeInfoVo) {
		
		return sqlSession.update("travelgeInfoMapper.travelgeInfoUpdate",travelgeInfoVo);
	}

	@Override
	public int travelgeInfoDelete(String contentCode) {
		
		return sqlSession.delete("travelgeInfoMapper.travelgeInfoDelete", contentCode);
	}

	@Override
	public List<TravelgeInfoVo> travelgeInfoSearch(TravelgeInfoVo travelgeInfoVo, int currentPage) {
	
			 List<TravelgeInfoVo> list = sqlSession.selectList("travelgeInfoMapper.travelgeInfoLIst", travelgeInfoVo, new RowBounds(currentPage, 10));
			 	
			return list; 
	}

	@Override
	public List<TravelgeInfoVo> searchAroundMe() {
		// TODO Auto-generated method stub
		 return sqlSession.selectList("travelgeInfoMapper.travelgeInfoSearch");
	}

	@Override
	public List<TravelgeInfoVo> travelgeSearchScroll(TravelgeInfoVo travelgeInfoVo, int currentPage,
			String keyword) {
		Map<Object, Object> map = new HashMap<>();

		map.put("travelgeTheme", travelgeInfoVo.getTravelgeTheme());
		map.put("travelgeRegion", travelgeInfoVo.getTravelgeRegion());
		map.put("keyword", keyword);	
		List <TravelgeInfoVo> list = sqlSession.selectList("travelgeInfoMapper.travelgeSearchScroll", map, new RowBounds(currentPage, 10));
		return list;
	}


	@Override
	public List<TravelgeLatestCommentVo> latestComment() {
		List<TravelgeLatestCommentVo> list = sqlSession.selectList("travelgeInfoMapper.latestComment", 0, new RowBounds(0,5));

		return list;
	}

	@Override
	public List<TravelgeInfoVo> travelgeInfoSearch2(TravelgeInfoVo travelgeInfoVo, int currentPage) {
		 List<TravelgeInfoVo> list = sqlSession.selectList("travelgeInfoMapper.travelgeInfoSearch", travelgeInfoVo, new RowBounds(currentPage, 10));
		return list;
	}
	

}
