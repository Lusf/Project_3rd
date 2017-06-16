package kosta.web.controller.food;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kosta.web.model.service.food.RestaurantInfoService;
import kosta.web.model.vo.restaurant.RestaurentVo;

@Controller
public class FoodController {
	@Autowired
	private RestaurantInfoService restaurantInfoService;

	@RequestMapping("eating/eatingMain")
	public String eatingMain() {

		return "eating/eatingMain";
	}

	@RequestMapping("eating/test")
	public ModelAndView Test(String contentCode) {
		System.out.println("123");

		List<RestaurentVo> list = restaurantInfoService.RestauranSearch(null);
		System.out.println(list);

		return new ModelAndView("eating/test", "list", list);

	}

	@RequestMapping("eating/insert")
	public String insertRestaurent(HttpServletRequest req, RestaurentVo restaurentVo) throws Exception {

		String path = req.getSession().getServletContext().getRealPath("/resources/restaurent");

		MultipartFile file = restaurentVo.getFile();

		if (file.getSize() > 0) {
			restaurentVo.setRestaurantPic(file.getOriginalFilename());
		}

		int result = restaurantInfoService.RestaurantInsert(restaurentVo);
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