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
	/*<option value="SU">����</option>
	  <option value="DJ">����</option>
	  <option value="DG">�뱸</option>
	  <option value="BS">�λ�</option>
	  <option value="KW">������</option>*/
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
	private RestaurantDAO restaurentInfoDAO;
	
	@Override
	public int RestaurantInsert(RestaurentVo restaurentVo) {
		
		String contentCode = null;
		
		// �������ڵ� ����
		int ran = (int) (Math.random() * 10000 + 1);

		// �������ڵ� ����
		contentCode = "C" + restaurentVo.getRestaurantAddr() + restaurentVo.getCategory() + ran;
		System.out.println(contentCode);

		restaurentVo.setContentCode(contentCode);
		
		// ������ �ڵ� �ߺ� üũ
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
