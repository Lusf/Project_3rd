package kosta.web.controller.food;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kosta.web.model.service.food.RestaurantService;
import kosta.web.model.vo.restaurant.RestaurentVo;

@Controller
@RequestMapping("/eating")
public class FoodController {
	@Autowired
	private RestaurantService restaurantService;

	@RequestMapping("/eatingMain")
	public String eatingMain() {
		
		return "eating/eatingMain";
	}
	
	@RequestMapping("/newdesign")
	public String testMark2(){
		return "eating/new_theme_mark2/index";
	}
	
	@RequestMapping("/test")
	public ModelAndView Test(String contentCode, RestaurentVo restaurentVo) {
		System.out.println("123");

		List<RestaurentVo> list = restaurantService.RestauranSearch(restaurentVo, 1);
		System.out.println(list);

		return new ModelAndView("eating/test", "list", list);

	}
	
	@RequestMapping("/insertRestaurent")
	public String insertRestaurent(HttpServletRequest req, RestaurentVo restaurentVo) throws Exception {

		String path = req.getSession().getServletContext().getRealPath("/resources/restaurent");

		MultipartFile file = restaurentVo.getFile();

		if (file.getSize() > 0) {
			restaurentVo.setRestaurantPic(file.getOriginalFilename());
		}

		int result = restaurantService.RestaurantInsert(restaurentVo);
		if (result == 0) {
			throw new Exception();
		}
		// 폴더 생성
		File mainFolder = new File(path);
		if (!mainFolder.exists()) {
			mainFolder.mkdir();
		}
		File idFolder = new File(path + "/" + restaurentVo.getId());
		if (!idFolder.exists()) {
			idFolder.mkdir();
		}
		File profileFolder = new File(path + "/" + restaurentVo.getId() + "/info");
		if (!profileFolder.exists()) {
			profileFolder.mkdir();
		}
		// -----폴더 생성 끝
		if (file.getSize() > 0) {
			try {
				file.transferTo(new File(path + "/" + restaurentVo.getId() + "/info/" + restaurentVo.getRestaurantPic()));
			} catch (Exception e) {
			}
		}

		return "redirect:/";
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