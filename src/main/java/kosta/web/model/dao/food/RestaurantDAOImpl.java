package kosta.web.model.dao.food;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosta.web.model.vo.restaurant.RestaurantVo;

@Repository
public class RestaurantDAOImpl implements RestaurantDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int RestaurantInsert(RestaurantVo restaurantVo) {
		
		
		return sqlSession.insert("foodMapper.insertRestaurant",restaurantVo);
	}

	@Override
	public int RestaurantUpdate(RestaurantVo restaurantVo) {

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
	public List<RestaurantVo> RestaurantSearch(RestaurantVo restaurantVo, int i) {

		return sqlSession.selectList("foodMapper.searchByRestaurant",restaurantVo, new RowBounds(i,5));
	}

	@Override
	public List<RestaurantVo> Search(RestaurantVo restaurantVo, int i) {
		
		return sqlSession.selectList("foodMapper.selectRestaurant",restaurantVo, new RowBounds(i,5));
	}

}
