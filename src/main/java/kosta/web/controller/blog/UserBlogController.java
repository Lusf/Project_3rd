package kosta.web.controller.blog;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kosta.web.controller.enter.EnterController;
import kosta.web.controller.food.FoodController;
import kosta.web.controller.travelge.TravelgeController;
import kosta.web.model.service.blog.UserBlogService;
import kosta.web.model.service.user.UserService;
import kosta.web.model.vo.UserVo;
import kosta.web.model.vo.blog.UserBlogVo;

@Controller
@RequestMapping("blog")
public class UserBlogController {
	
	@Autowired
	private UserBlogService blogService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private TravelgeController travelgeController;
	
	@Autowired
	private EnterController enterController;
	
	@Autowired
	private FoodController foodController;

	@RequestMapping("/{id}")
	public String userBlog(@PathVariable String id){

		UserVo user = userService.userSearchById(id);
		session.setAttribute("blogId", id);
		session.setAttribute("blogUserPic", user.getUserPic());
		
		List<UserBlogVo> title = blogService.blogTitle(id, null);
		List<UserBlogVo> trTitle = blogService.blogTitle(id, "Travelge");
		List<UserBlogVo> enTitle = blogService.blogTitle(id, "Entertainment");
		List<UserBlogVo> foTitle = blogService.blogTitle(id, "Food");
		
		session.setAttribute("blogAllTitle", title);
		session.setAttribute("trTitle", trTitle);
		session.setAttribute("enTitle", enTitle);
		session.setAttribute("foTitle", foTitle);
		return "blog/blog";
	}
	
	@RequestMapping(value = "/selectBlogTitle", method = RequestMethod.POST)
	@ResponseBody
	public List<UserBlogVo> selectTitle(String category){
		List<UserBlogVo> list = blogService.blogTitle((String)session.getAttribute("blogId"), category);
		return list;
	}
	
	@RequestMapping(value = "/selectBlogCont", method = RequestMethod.POST)
	@ResponseBody
	public List<UserBlogVo> selectCont(String contentCode){
		String id = (String)session.getAttribute("blogId");
		List<UserBlogVo> list = blogService.selectCont(id, contentCode);
		
		return list;
	}
	
	@RequestMapping(value = "/deleteBlogCont", method = RequestMethod.POST)
	@ResponseBody
	public void deleteCont(String contentCode){
		blogService.delete((String)session.getAttribute("blogId"), contentCode);
	}

	@RequestMapping("/insertBlogReview")
	public ModelAndView insertReview(UserBlogVo blogVo){
		blogService.insert(blogVo); 
		
		ModelAndView mv = new ModelAndView();
		String ini = blogVo.getContentCode().substring(0,1);
		
		mv.setViewName("blog/blogReviewInsert");
		
		if(ini.equals("T"))
			mv = travelgeController.detailView(blogVo.getContentCode(), null);
		else if(ini.equals("B"))
			mv = enterController.enterDetailConcertView(blogVo.getContentCode(), null);
		else if(ini.equals("C"))
			blogVo.setCategory("Food");
			//mv = foodController.search(blogVo.getContentCode());
		
		return mv;
	}
	
	@RequestMapping("/insertBlogReview2")
	public ModelAndView insertReview2(UserBlogVo blogVo){
		String contentCode = blogVo.getContentCode();
		blogService.insert(blogVo); 
		
		ModelAndView mv = new ModelAndView();
		String ini = blogVo.getContentCode().substring(0,1);
		
		//mv.addObject("contentCode", blogVo.getContentCode());
		
		if(ini.equals("T"))
			mv = travelgeController.detailView(blogVo.getContentCode(), null);
		else if(ini.equals("B"))
			mv = enterController.enterDetailConcertView(blogVo.getContentCode(), null);
		else if(ini.equals("C"))
			blogVo.setCategory("Food");
			//mv = foodController.search(blogVo.getContentCode());
		

		mv.setViewName("redirect:/entertainment/new/enterDetailView/"+contentCode);
		
		return mv;
	}
	
	@RequestMapping("/blogUpdateCall")
	public String call(){
		return "blog/blogReviewUpdate";
	}
	
	@RequestMapping(value = "/updateBlogReview", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView updateReview(UserBlogVo blogVo){
		ModelAndView mv = new ModelAndView();
		blogService.update(blogVo);
		
		mv.setViewName("forward:"+blogVo.getId());
		return mv;
	}
}