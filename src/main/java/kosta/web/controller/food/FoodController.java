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
		// 弃歹 积己
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
		// -----弃歹 积己 场
		if (file.getSize() > 0) {
			try {
				file.transferTo(new File(path + "/" + restaurentVo.getId() + "/info/" + restaurentVo.getRestaurantPic()));
			} catch (Exception e) {
			}
		}

		return "redirect:/";
	}
}