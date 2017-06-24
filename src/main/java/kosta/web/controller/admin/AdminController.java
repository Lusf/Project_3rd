package kosta.web.controller.admin;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kosta.web.model.service.admin.AdminService;
import kosta.web.model.service.blog.UserBlogService;
import kosta.web.model.vo.ChartVo;
import kosta.web.model.vo.blog.UserBlogVo;
import kosta.web.security.CountManager;

@Controller
@RequestMapping("admin")
public class AdminController {

	@Autowired
	private AdminService adminService;

	@RequestMapping("{url}")
	public String url(@PathVariable String url){
	
		return "admin/"+url;
	}
	
	@RequestMapping("index")
	public ModelAndView index(){
		
		ModelAndView mv = new ModelAndView();
		
		ChartVo userCount = adminService.selectUserCount(); //현재 가입 유저 수, 날짜 기준
		int travelgeCount = adminService.selectTravelgeCount();
		int foodCount = adminService.selectFoodCount();
		int lookCount = adminService.selectLookCount();
		int contentCount = travelgeCount + foodCount + lookCount;
		
		int latestReviewCount = adminService.latestReviewCount();
		
		List<ChartVo> wishRank = adminService.wishListRank();
		List<ChartVo> totalUserCount = adminService.totalUserCount();
		List<UserBlogVo> commentList = adminService.latestSelect();
		List<ChartVo> scoreRank = adminService.scoreRank();
		mv.addObject("count",CountManager.getCount()); //현재 접속자 수
		mv.addObject("userCount",userCount);			//총 유저의 수
		mv.addObject("travelgeCount",travelgeCount);		//여행지 컨텐츠 수
		mv.addObject("foodCount",foodCount);			//먹거리 컨텐츠 수
		mv.addObject("lookCount",lookCount);			//볼거리 컨텐츠 수
		mv.addObject("contentCount",contentCount);		//컨텐츠의 총 수
		mv.addObject("latestReviewCount",latestReviewCount);	//최신 리뷰의 수
		mv.addObject("wishRank", wishRank);			//좋아요 순위
		mv.addObject("scoreRank",scoreRank);			//평점 순위
		mv.addObject("totalUserCount",totalUserCount);	//유저의 수 누적 그래프
		mv.addObject("commentList",commentList); 		//최신 리뷰 리스트

		
		mv.setViewName("admin/index");
		return mv;
	}
	
	@RequestMapping("{folder}/{url}")
	public String forderUrl(@PathVariable String folder, @PathVariable String url){
		return "admin/"+folder+"/"+url;
	}
}
