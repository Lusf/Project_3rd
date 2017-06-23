package kosta.web.model.service.food;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosta.web.model.dao.food.RestaurantDAO;
import kosta.web.model.vo.restaurant.RestaurantVo;

@Service
public class RestaurantServiceImpl implements RestaurantService {
	
	Map<String, String> map = new HashMap<>();
	
	public RestaurantServiceImpl(){
		
		//지역별
		map.put("SU", "서울");
		map.put("DJ", "대전");
		map.put("DG", "대구");
		map.put("BS", "부산");
		map.put("KW","강원도");
		//
		//음식종류별
		map.put("KR", "한식");
		map.put("CN", "중식");
		map.put("EN", "양식");
		
		
	}
	
	@Autowired
	private RestaurantDAO restaurantInfoDAO;
	
	@Override
	public int RestaurantInsert(RestaurantVo restaurantVo) {
		System.out.println(restaurantVo.getId());
		String contentCode = null;
		
		// 컨텐츠코드 난수
		int ran = (int) (Math.random() * 10000 + 1);

		// 컨텐츠코드 생성
		contentCode = "C" + restaurantVo.getCategory() + restaurantVo.getCategory2() + ran;
		System.out.println(contentCode);

		restaurantVo.setContentCode(contentCode);
		
		// 컨텐츠 코드 중복 체크
		int i = 0;
		for (i = 0; i < restaurantInfoDAO.RestaurantSearch(null, 0).size(); i++) {
			if (restaurantInfoDAO.RestaurantSearch(restaurantVo, 0).size() == 1) {
				ran = (int) (Math.random() * 10000 + 1);
				contentCode = "C" + restaurantVo.getCategory() + restaurantVo.getCategory2() + ran;
			}else{
				break;
			};
		}
		
		return restaurantInfoDAO.RestaurantInsert(restaurantVo);
	}

	@Override
	public int RestaurantUpdate(RestaurantVo restaurantVo) {
		return 0;
	}

	@Override
	public int RestaurantDelete(String contentCode) {
		return 0;
	}

	@Override
	public List<RestaurantVo> RestaurantSearch(RestaurantVo restaurantVo, int i) {

		if (i == 1) {
			i = 0;
		} else {
			i = (i * 5) - 5;
		}
		List<RestaurantVo> list = restaurantInfoDAO.RestaurantSearch(restaurantVo, i);

		
		return list;
	}

	@Override
	public List<RestaurantVo> Search(RestaurantVo restaurantVo, int i) {
		if (i == 1) {
			i = 0;
		} else {
			i = (i * 5) - 5;
		}
		List<RestaurantVo> list = restaurantInfoDAO.Search(restaurantVo, i);

		
		return list;
	}
}
