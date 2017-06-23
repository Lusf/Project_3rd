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
		
		//������
		map.put("SU", "����");
		map.put("DJ", "����");
		map.put("DG", "�뱸");
		map.put("BS", "�λ�");
		map.put("KW","������");
		//
		//����������
		map.put("KR", "�ѽ�");
		map.put("CN", "�߽�");
		map.put("EN", "���");
		
		
	}
	
	@Autowired
	private RestaurantDAO restaurantInfoDAO;
	
	@Override
	public int RestaurantInsert(RestaurantVo restaurantVo) {
		System.out.println(restaurantVo.getId());
		String contentCode = null;
		
		// �������ڵ� ����
		int ran = (int) (Math.random() * 10000 + 1);

		// �������ڵ� ����
		contentCode = "C" + restaurantVo.getCategory() + restaurantVo.getCategory2() + ran;
		System.out.println(contentCode);

		restaurantVo.setContentCode(contentCode);
		
		// ������ �ڵ� �ߺ� üũ
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
