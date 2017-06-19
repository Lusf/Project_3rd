package kosta.web.model.dao.food;

import java.util.List;

import kosta.web.model.vo.restaurant.RestaurantVo;

public interface RestaurantDAO {
	int RestaurantInsert(RestaurantVo restaurantVo);
	int RestaurantUpdate(RestaurantVo restaurantVo);
	int RestaurantDelete(String contentCode);
	List<RestaurantVo> RestaurantSearch(RestaurantVo restaurantVo, int i);
	/*List<restaurantVo> RestaurantSearch(String contentCode, int i);*/
}
