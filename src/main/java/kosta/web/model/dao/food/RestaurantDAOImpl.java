package kosta.web.model.dao.food;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosta.web.model.vo.restaurant.RestaurentVo;

@Repository
public class RestaurantDAOImpl implements RestaurantDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int RestaurantInsert(RestaurentVo restaurentVo) {
		
		
		return sqlSession.insert("foodMapper.insertRestaurant",restaurentVo);
	}

	@Override
	public int RestaurantUpdate(RestaurentVo restaurentVo) {

		return 0;
	}

	@Override
	public int RestaurantDelete(String contentCode) {
		// TODO Auto-generated method stub
		return 0;
	}

/*	@Override
	public List<RestaurentVo> RestaurantSearch(String contentCode, int i) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("foodMapper.selectByRestaurant",contentCode, new RowBounds(i,10));
	}*/

	@Override
	public List<RestaurentVo> RestaurantSearch(RestaurentVo restaurentVo, int i) {
		
		return sqlSession.selectList("foodMapper.selectByRestaurant",restaurentVo, new RowBounds(i,10));
	}

}
