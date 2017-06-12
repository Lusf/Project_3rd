package kosta.web.model.dao.food;

import java.util.List;

import kosta.web.model.vo.restaurant.RestaurentVo;

public interface RestaurantInfoDAO {
	int RestaurantInsert(RestaurentVo restaurentVo);
	int RestaurantUpdate(RestaurentVo restaurentVo);
	int RestaurantDelete(String contentCode);
	List<RestaurentVo> RestauranSearch(RestaurentVo restaurentVo);
}
