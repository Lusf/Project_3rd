package kosta.web.model.service.food;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosta.web.model.dao.food.RestaurantDAO;
import kosta.web.model.vo.restaurant.RestaurentVo;

@Service
public class RestaurantServiceImpl implements RestaurantService {
	
	Map<String, String> map = new HashMap<>();
	/*<option value="SU">서울</option>
	  <option value="DJ">대전</option>
	  <option value="DG">대구</option>
	  <option value="BS">부산</option>
	  <option value="KW">강원도</option>*/
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
	private RestaurantDAO restaurentInfoDAO;
	
	@Override
	public int RestaurantInsert(RestaurentVo restaurentVo) {
		
		String contentCode = null;
		
		// 컨텐츠코드 난수
		int ran = (int) (Math.random() * 10000 + 1);

		// 컨텐츠코드 생성
		contentCode = "C" + restaurentVo.getRestaurantAddr() + restaurentVo.getCategory() + ran;
		System.out.println(contentCode);

		restaurentVo.setContentCode(contentCode);
		
		// 컨텐츠 코드 중복 체크
		int i = 0;
		for (i = 0; i < restaurentInfoDAO.RestaurantSearch(null, 0).size(); i++) {
			if (restaurentInfoDAO.RestaurantSearch(restaurentVo, 0).size() == 1) {
				ran = (int) (Math.random() * 10000 + 1);
				contentCode = "C" + restaurentVo.getRestaurantAddr() + restaurentVo.getCategory() + ran;
			}else{
				break;
			};
		}
		
		return restaurentInfoDAO.RestaurantInsert(restaurentVo);
	}

	@Override
	public int RestaurantUpdate(RestaurentVo restaurentVo) {
		return 0;
	}

	@Override
	public int RestaurantDelete(String contentCode) {
		return 0;
	}

	@Override
	public List<RestaurentVo> RestauranSearch(RestaurentVo restaurentVo, int i) {

		if (i == 1) {
			i = 0;
		} else {
			i = (i * 10) - 10;
		}
		List<RestaurentVo> list = restaurentInfoDAO.RestaurantSearch(restaurentVo, i);

		
		return list;
	}

	/*@Override
	public List<RestaurentVo> RestaurantSearch(String contentCode) {
		return restaurentInfoDAO.RestaurantSearch(contentCode);
	}*/

}
