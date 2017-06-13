package kosta.web.model.service.food;

import java.util.List;

import kosta.web.model.vo.restaurant.RestaurentVo;

public interface RestaurantInfoService {
	int RestaurantInsert(RestaurentVo restaurentVo);
	int RestaurantUpdate(RestaurentVo restaurentVo);
	int RestaurantDelete(String contentCode);
	List<RestaurentVo> RestauranSearch(String contentCode);
}