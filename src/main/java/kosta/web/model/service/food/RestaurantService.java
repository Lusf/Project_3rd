package kosta.web.model.service.food;

import java.util.List;

import kosta.web.model.vo.restaurant.RestaurentVo;

public interface RestaurantService {
	int RestaurantInsert(RestaurentVo restaurentVo);
	int RestaurantUpdate(RestaurentVo restaurentVo);
	int RestaurantDelete(String contentCode);
	List<RestaurentVo> RestauranSearch(RestaurentVo restaurentVo, int i);
}