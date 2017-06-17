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
	
	@RequestMapping("eating/newdesign")
	public String testMark2(){
		return "eating/new_theme_mark2/index";
	}
	
	//나중에 필요에 맞게 이름 맞꾸기(필요1)
	@RequestMapping("eating/about-us")
	public String menu1(){
		return "eating/new_theme_mark2/about-us";
	}

	//나중에 필요에 맞게 이름 맞꾸기(필요2)
	@RequestMapping("eating/blog-post")
	public String menu2(){
		return "eating/new_theme_mark2/blog-post";
	}
	//나중에 필요에 맞게 이름 맞꾸기(필요3)
	@RequestMapping("eating/developer")
	public String menu3(){
		return "eating/new_theme_mark2/developer";
	}
	
	//나중에 필요에 맞게 이름 맞꾸기(필요4)
	@RequestMapping("eating/landing")
	public String menu4(){
		return "eating/new_theme_mark2/landing";
	}
	

	@RequestMapping("eating/search")
	public String search(){
		return "eating/new_theme_mark2/search";
	}
	
	//나중에 필요에 맞게 이름 맞꾸기(필요6)
	@RequestMapping("eating/offer")
	public String menu6(){
		return "eating/new_theme_mark2/offer";
	}
}