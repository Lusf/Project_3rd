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

	// �������
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
		// ���� ����
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
		// -----���� ���� ��
		if (file.getSize() > 0) {
			try {
				file.transferTo(
						new File(path + "/" + restaurantVo.getId() + "/info/" + restaurantVo.getRestaurantPic()));
			} catch (Exception e) {
			}
		}

		return "eating/index2";
	}

	// ���� �˻���(�˻���)
	@RequestMapping("/restaurantSearch")
	public ModelAndView restaurantSearch(String category, String category2, String keyWord, String currentPage) {
		int spage = 1;
		String page = currentPage;
		
		if (page != null)
			spage = Integer.parseInt(page);
		ModelAndView modelAndView = new ModelAndView();
		RestaurantVo restaurantVo = new RestaurantVo();

		if(category.equals("AL") && category2.equals("AL") && keyWord =="" ){
			//System.out.println("��ü�˻�");
			
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
		
		// �� ȭ�鿡 10���� �Խñ��� ����������
		// ������ ��ȣ�� �� 5��, ���ķδ� [����]���� ǥ��
		List<RestaurantVo> list = restaurantService.RestaurantSearch(restaurantVo, spage);
		int listCount = list.size();
		if (list != null && list.size() != 0) {
			listCount = list.get(0).getCnt();
		}
		//System.out.println(listCount);
		// ��ü ������ ��
		int maxPage = (int) (listCount / 5.0 + 0.4);
		// ���� ������ ��ȣ
		int startPage = (int) (spage / 5.0 + 0.8) * 5 - 4;
		// ������ ������ ��ȣ
		int endPage = startPage + 5;
		
		if (endPage > maxPage)
		endPage = maxPage;

		// 4�� ��������ȣ ����
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

	// ���߿� �ʿ信 �°� �̸� �²ٱ�(�ʿ�1)
	@RequestMapping("about-us")
	public String menu1() {
		return "eating/about-us";
	}

	// ���߿� �ʿ信 �°� �̸� �²ٱ�(�ʿ�2)
	@RequestMapping("blog-post")
	public String menu2() {
		return "eating/blog-post";
	}

	// ���߿� �ʿ信 �°� �̸� �²ٱ�(�ʿ�3)
	@RequestMapping("developer")
	public String menu3() {
		return "eating/developer";
	}

	// ���߿� �ʿ信 �°� �̸� �²ٱ�(�ʿ�4)
	@RequestMapping("landing")
	public String menu4() {
		return "eating/landing";
	}

	// ��ü ��������(��ư��)
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

	// ���߿� �ʿ信 �°� �̸� �²ٱ�(�ʿ�6)
	@RequestMapping("/offer")
	public String menu6() {
		return "eating/offer";
	}
}