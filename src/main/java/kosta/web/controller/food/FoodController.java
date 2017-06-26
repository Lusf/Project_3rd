package kosta.web.controller.food;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kosta.web.model.service.blog.UserBlogService;
import kosta.web.model.service.food.RestaurantService;
import kosta.web.model.vo.UserVo;
import kosta.web.model.vo.blog.UserBlogVo;
import kosta.web.model.vo.restaurant.RestaurantVo;
import kosta.web.model.vo.travelge.TravelgeInfoVo;

@Controller
@RequestMapping("/eating")
public class FoodController {
	
	@Autowired
	private RestaurantService restaurantService;

	@Autowired
	private UserBlogService userBlogService;

	@RequestMapping("/main")
	public ModelAndView main() {
		
		List<RestaurantVo> list = restaurantService.RecommandRestaurant();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("food/search");

		return new ModelAndView("/eating/index2", "listA", list);
	}

	// 맛집등록
	@RequestMapping("/insertRestaurant")
	public String insertRestaurant(HttpServletRequest req, RestaurantVo restaurantVo) throws Exception {

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		UserVo uservo = (UserVo) authentication.getPrincipal();
		restaurantVo.setId(uservo.getId());

		//System.out.println("restaurantVo : " + restaurantVo);
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
				file.transferTo(
						new File(path + "/" + restaurantVo.getId() + "/info/" + restaurantVo.getRestaurantPic()));
			} catch (Exception e) {
			}
		}

		return "eating/index2";
	}

	// 맛집 검색용(검색바)
	@RequestMapping("/restaurantSearch")
	public ModelAndView restaurantSearch(String category, String category2, String keyWord, String currentPage) {
		int spage = 1;
		String page = currentPage;
		
		if (page != null)
			spage = Integer.parseInt(page);
		ModelAndView modelAndView = new ModelAndView();
		RestaurantVo restaurantVo = new RestaurantVo();

		if(category.equals("AL") && category2.equals("AL") && keyWord =="" ){
			//System.out.println("전체검색");
			
		}else if (!category.equals("AL") && category2.equals("AL") && keyWord =="" || keyWord ==null){
			restaurantVo.setCategory(category);
			restaurantVo.setCategory2(null);
			restaurantVo.setRestaurantName(null);
			restaurantVo.setRestaurantInfo(null);
		
		} else if (category.equals("AL") && !category2.equals("AL") && keyWord =="" || keyWord ==null){
			restaurantVo.setCategory(null);
			restaurantVo.setCategory2(category2);
			restaurantVo.setRestaurantName(null);
			restaurantVo.setRestaurantInfo(null);
		
		} else if(category.equals("AL") && !category2.equals("AL")  && keyWord !="" && keyWord !=null){
			restaurantVo.setCategory(null);
			restaurantVo.setCategory2(category2);
			restaurantVo.setRestaurantName(keyWord);
			restaurantVo.setRestaurantInfo(keyWord);
		
		}else if(!category.equals("AL") && !category2.equals("AL") && keyWord =="" || keyWord ==null ){
			restaurantVo.setCategory(category);
			restaurantVo.setCategory2(category2);
			restaurantVo.setRestaurantName(null);
			restaurantVo.setRestaurantInfo(null);
			
		}else if (category.equals("AL") && category2.equals("AL") && keyWord !="" || keyWord !=null){
			restaurantVo.setCategory(null);
			restaurantVo.setCategory2(null);
			restaurantVo.setRestaurantName(keyWord);
			restaurantVo.setRestaurantInfo(keyWord);
			
		}else if (!category.equals("AL") && category2.equals("AL") && keyWord !="" || keyWord !=null){
			restaurantVo.setCategory(category);
			restaurantVo.setCategory2(null);
			restaurantVo.setRestaurantName(keyWord);
			restaurantVo.setRestaurantInfo(keyWord);
			
		}else if(!category.equals("AL") && !category2.equals("AL") && keyWord !="" || keyWord !=null ){
			restaurantVo.setCategory(category);
			restaurantVo.setCategory2(category2);
			restaurantVo.setRestaurantName(keyWord);
			restaurantVo.setRestaurantInfo(keyWord);
		}
		
		// 한 화면에 10개의 게시글을 보여지게함
		// 페이지 번호는 총 5개, 이후로는 [다음]으로 표시
		List<RestaurantVo> list = restaurantService.RestaurantSearch(restaurantVo, spage);
		int listCount = list.size();
		if (list != null && list.size() != 0) {
			listCount = list.get(0).getCnt();
		}
		//System.out.println(listCount);
		// 전체 페이지 수
		int maxPage = (int) (listCount / 5.0 + 0.4);
		// 시작 페이지 번호
		int startPage = (int) (spage / 5.0 + 0.8) * 5 - 4;
		// 마지막 페이지 번호
		int endPage = startPage + 5;
		
		if (endPage > maxPage)
		endPage = maxPage;

		// 4개 페이지번호 저장
		modelAndView.addObject("spage", spage);
		modelAndView.addObject("maxPage", maxPage);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);
		modelAndView.addObject("listCount", listCount);
		modelAndView.addObject("listA", list);
		modelAndView.addObject("category", category);
		modelAndView.addObject("category2", category2);
		modelAndView.addObject("keyWord", keyWord);
		modelAndView.setViewName("eating/search");

		return modelAndView;
		

	}

	// 나중에 필요에 맞게 이름 맞꾸기(필요1)
	@RequestMapping("about-us")
	public String menu1() {
		return "eating/about-us";
	}

	// 나중에 필요에 맞게 이름 맞꾸기(필요2)
	@RequestMapping("blog-post")
	public String menu2() {
		return "eating/blog-post";
	}

	// 나중에 필요에 맞게 이름 맞꾸기(필요3)
	@RequestMapping("developer")
	public String menu3() {
		return "eating/developer";
	}

	// 나중에 필요에 맞게 이름 맞꾸기(필요4)
	@RequestMapping("landing")
	public String menu4() {
		return "eating/landing";
	}

	// 전체 맛집보기(버튼용)
	@RequestMapping("/search")
	public ModelAndView search(String contentCode) {

		RestaurantVo temp = new RestaurantVo();
		temp.setContentCode(contentCode);

		List<RestaurantVo> list = restaurantService.Search(temp, 0);
		//System.out.println(list);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("food/search");

		return new ModelAndView("eating/search", "listA", list);
	}

	@RequestMapping("/insertReview")
	public String insertReview(UserBlogVo blogVo) {

		UserVo user = (UserVo) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String id = user.getId();

		blogVo.setId(id);
		userBlogService.insert(blogVo);

		return "redirect:/eating/search";
	}

	// 나중에 필요에 맞게 이름 맞꾸기(필요6)
	@RequestMapping("/offer")
	public String menu6() {
		return "eating/offer";
	}
}