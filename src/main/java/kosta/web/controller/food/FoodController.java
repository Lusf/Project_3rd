package kosta.web.controller.food;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kosta.web.model.service.food.RestaurantInfoService;
import kosta.web.model.vo.restaurant.RestaurentVo;
	

@Controller
public class FoodController {
	@Autowired
	private RestaurantInfoService restaurantInfoService;
	
	@RequestMapping("eating/eatingMain")
	public String eatingMain(){
		
		return "eating/eatingMain";
	}
	
	@RequestMapping("eating/test")
	public ModelAndView Test( String contentCode){
		System.out.println("123");

		List<RestaurentVo> list = restaurantInfoService.RestauranSearch(null);
		System.out.println(list);
		

		
		return new ModelAndView("eating/test","list", list);
		
	}
}