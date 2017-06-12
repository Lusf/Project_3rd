package kosta.web.model.service.food;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosta.web.model.dao.food.RestaurantInfoDAO;
import kosta.web.model.vo.restaurant.RestaurentVo;

@Service
public class RestaurantInfoServiceImpl implements RestaurantInfoService {
	
	@Autowired
	private RestaurantInfoDAO restaurentInfoDAO;
	
	@Override
	public int RestaurantInsert(RestaurentVo restaurentVo) {
		
		return 0;
	}

	@Override
	public int RestaurantUpdate(RestaurentVo restaurentVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int RestaurantDelete(String contentCode) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<RestaurentVo> RestauranSearch(RestaurentVo restaurentVo) {
		// TODO Auto-generated method stub
		return null;
	}

}
