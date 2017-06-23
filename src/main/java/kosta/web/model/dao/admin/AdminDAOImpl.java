package kosta.web.model.dao.admin;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosta.web.model.vo.ChartVo;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public ChartVo selectUserCount() {
		  
		return sqlSession.selectOne("adminMapper.selectUserCount");
	}

	@Override
	public int insertUserCount() {
		return sqlSession.selectOne("adminMapper.insertUserCount");
	}

	@Override
	public int selectTravelgeCount() {
		return sqlSession.selectOne("adminMapper.selectTravelgeCount");
	}

	@Override
	public int selectFoodCount() {
		return sqlSession.selectOne("adminMapper.selectFoodCount");
	}

	@Override
	public int selectLookCount() {
		return sqlSession.selectOne("adminMapper.selectLookCount");
	}

	@Override
	public int latestReviewCount() {
		return sqlSession.selectOne("adminMapper.latestReviewCount");
	}

	@Override
	public List<ChartVo> wishListRank() {
		
		return sqlSession.selectList("adminMapper.wishListRank" , new RowBounds(0, 10));
	}

	@Override
	public List<ChartVo> totalUserCount() {

		return sqlSession.selectList("adminMapper.totalUserCount");
	}

	@Override
	public List<ChartVo> scoreRank() {
		
		return sqlSession.selectList("adminMapper.scoreRank", new RowBounds(0, 10));
	}

}
