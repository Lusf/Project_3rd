package kosta.web.controller.food;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kosta.web.model.service.food.RestaurantService;
import kosta.web.model.vo.UserVo;
import kosta.web.model.vo.restaurant.RestaurantVo;
import kosta.web.model.vo.travelge.TravelgeInfoVo;

@Controller
/*@RequestMapping("/eating")*/
public class FoodController {
	@Autowired
	private RestaurantService restaurantService;

	@RequestMapping("eating/eatingMain")
	public String eatingMain() {
		
		/*return "eating/eatingMain";*/
		return "eating/new_theme_mark2/webconf";
	}
	
	@RequestMapping("eating/newdesign")
	public String testMark2(){
		return "eating/new_theme_mark2/index";
	}
	
	/*@RequestMapping("eating/test")
	public ModelAndView Test(String contentCode, RestaurentVo restaurentVo) {
		System.out.println("123");

		List<RestaurentVo> list = restaurantService.RestauranSearch(restaurentVo, 1);
		System.out.println(list);

		return new ModelAndView("eating/test", "list", list);

	}*/
	
	@RequestMapping("eating/insertRestaurant")
	public String insertRestaurant(HttpServletRequest req, RestaurantVo restaurantVo) throws Exception {
	    /*restaurantVo.setRestaurantPic(restaurantVo.getFile().getOriginalFilename());*/
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		UserVo uservo = (UserVo)authentication.getPrincipal();
		restaurantVo.setId(uservo.getId());
		
		System.out.println("restaurantVo : "+ restaurantVo);
		String path = req.getSession().getServletContext().getRealPath("/resources/restaurant");

		MultipartFile file = restaurantVo.getFile();

		if (file.getSize() > 0) {
			restaurantVo.setRestaurantPic(file.getOriginalFilename());
		}

		int result = restaurantService.RestaurantInsert(restaurantVo);
		if (result == 0) {
			throw new Exception();
		}
		// 폴더 생성
		File mainFolder = new File(path);
		if (!mainFolder.exists()) {
			mainFolder.mkdir();
		}
		File idFolder = new File(path + "/" + restaurantVo.getId());
		if (!idFolder.exists()) {
			idFolder.mkdir();
		}
		File profileFolder = new File(path + "/" + restaurantVo.getId() + "/info");
		if (!profileFolder.exists()) {
			profileFolder.mkdir();
		}
		// -----폴더 생성 끝
		if (file.getSize() > 0) {
			try {
				file.transferTo(new File(path + "/" + restaurantVo.getId() + "/info/" + restaurantVo.getRestaurantPic()));
			} catch (Exception e) {
			}
		}

		return "redirect:/";
	}
	
	//검색 
	@RequestMapping("/restaurantSearch")
	public ModelAndView restaurantSearch(String keyField, String keyWord, String currentPage){
		int spage = 1;
		String page = currentPage;
		
		if (page != null)
			spage = Integer.parseInt(page);
		ModelAndView modelAndView = new ModelAndView();
		RestaurantVo restaurantVo = new RestaurantVo();
		if (keyField.equals("all")) {
			if (keyWord == null) {
				restaurantVo = null;
			} else {
				restaurantVo.setContentCode(keyWord);
				restaurantVo.setRestaurantAddr(keyWord);
				restaurantVo.setRestaurantName(keyWord);
				restaurantVo.setCategory(keyWord);
				restaurantVo.setCategory2(keyWord);
			}
		}

		if (keyField.equals("contentCode"))
			restaurantVo.setContentCode(keyWord);
		if (keyField.equals("restaurantName"))
			restaurantVo.setRestaurantName(keyWord);
		if (keyField.equals("restaurantAddr"))
			restaurantVo.setRestaurantAddr(keyWord);
		if (keyField.equals("restaurantCategory"))
			restaurantVo.setCategory(keyWord);
		if (keyField.equals("restaurantCategory2"))
			restaurantVo.setCategory2(keyWord);

		// 한 화면에 10개의 게시글을 보여지게함
		// 페이지 번호는 총 5개, 이후로는 [다음]으로 표시
		List<RestaurantVo> list = restaurantService.RestaurantSearch(restaurantVo, spage);
		int listCount = 0;
		if (list != null && list.size() != 0) {
			/*listCount = list.get(0).getCnt();*/
			listCount = list.get(0).getCnt();
		}
		// 전체 페이지 수
		int maxPage = (int) (listCount / 10.0 + 0.9);
		// 시작 페이지 번호
		int startPage = (int) (spage / 5.0 + 0.8) * 5 - 4;
		// 마지막 페이지 번호
		int endPage = startPage + 9;
		if (endPage > maxPage)
			endPage = maxPage;

		// 4개 페이지번호 저장
		modelAndView.addObject("spage", spage);
		modelAndView.addObject("maxPage", maxPage);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);
		modelAndView.addObject("listCount", listCount);
		modelAndView.addObject("list", list);
		modelAndView.addObject("keyField", keyField);
		modelAndView.addObject("keyWord", keyWord);
		modelAndView.setViewName("eating/new_theme_mark2/search");
		
		return modelAndView;

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
	
	//view all
	@RequestMapping("eating/new_theme_mark2/search")
	public ModelAndView search(String contentCode, RestaurantVo restaurantVo){
		
		/*return "eating/new_theme_mark2/search";*/
		
		List<RestaurantVo> list = restaurantService.RestaurantSearch(restaurantVo, 1);
		System.out.println(list);

		return new ModelAndView("eating/new_theme_mark2/search", "listA", list);
	}
	
	//나중에 필요에 맞게 이름 맞꾸기(필요6)
	@RequestMapping("eating/offer")
	public String menu6(){
		return "eating/new_theme_mark2/offer";
	}
}