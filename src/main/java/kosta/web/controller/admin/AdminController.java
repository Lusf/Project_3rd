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
		
		ChartVo userCount = adminService.selectUserCount(); //���� ���� ���� ��, ��¥ ����
		int travelgeCount = adminService.selectTravelgeCount();
		int foodCount = adminService.selectFoodCount();
		int lookCount = adminService.selectLookCount();
		int contentCount = travelgeCount + foodCount + lookCount;
		
		int latestReviewCount = adminService.latestReviewCount();
		
		List<ChartVo> wishRank = adminService.wishListRank();
		List<ChartVo> totalUserCount = adminService.totalUserCount();
		List<UserBlogVo> commentList = adminService.latestSelect();
		List<ChartVo> scoreRank = adminService.scoreRank();
		mv.addObject("count",CountManager.getCount()); //���� ������ ��
		mv.addObject("userCount",userCount);			//�� ������ ��
		mv.addObject("travelgeCount",travelgeCount);		//������ ������ ��
		mv.addObject("foodCount",foodCount);			//�԰Ÿ� ������ ��
		mv.addObject("lookCount",lookCount);			//���Ÿ� ������ ��
		mv.addObject("contentCount",contentCount);		//�������� �� ��
		mv.addObject("latestReviewCount",latestReviewCount);	//�ֽ� ������ ��
		mv.addObject("wishRank", wishRank);			//���ƿ� ����
		mv.addObject("scoreRank",scoreRank);			//���� ����
		mv.addObject("totalUserCount",totalUserCount);	//������ �� ���� �׷���
		mv.addObject("commentList",commentList); 		//�ֽ� ���� ����Ʈ

		
		mv.setViewName("admin/index");
		return mv;
	}
	
	@RequestMapping("{folder}/{url}")
	public String forderUrl(@PathVariable String folder, @PathVariable String url){
		return "admin/"+folder+"/"+url;
	}
}
