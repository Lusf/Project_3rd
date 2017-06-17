package kosta.web.model.dao.food;

import java.util.List;

import kosta.web.model.vo.restaurant.RestaurentVo;

public interface RestaurantDAO {
	int RestaurantInsert(RestaurentVo restaurentVo);
	int RestaurantUpdate(RestaurentVo restaurentVo);
	int RestaurantDelete(String contentCode);
	List<RestaurentVo> RestaurantSearch(RestaurentVo restaurentVo, int i);
	/*List<RestaurentVo> RestaurantSearch(String contentCode, int i);*/
}
