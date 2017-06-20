package kosta.web.model.service.food;

import java.util.List;

import kosta.web.model.vo.restaurant.RestaurantVo;

public interface RestaurantService {
	int RestaurantInsert(RestaurantVo restaurantVo);
	int RestaurantUpdate(RestaurantVo restaurantVo);
	int RestaurantDelete(String contentCode);
	List<RestaurantVo> RestauranSearch(RestaurantVo restaurantVo, int i);
}