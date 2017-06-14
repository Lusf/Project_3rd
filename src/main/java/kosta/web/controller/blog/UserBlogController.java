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

	@RequestMapping("/{id}")
	public String userBlog(@PathVariable String id){
		UserVo user = userService.userSearchById(id);
		session.setAttribute("blogId", id);
		session.setAttribute("blogUserPic", user.getUserPic());
		return "blog/blog";
	}
	
	@RequestMapping(value = "/selectTitle", method = RequestMethod.POST)
	@ResponseBody
	public List<UserBlogVo> selectTitle(String category){
		List<UserBlogVo> list = blogService.blogTitle((String)session.getAttribute("blogId"), category);
		//System.out.println(list.get(0).getBlogTitle()+", "+list.get(0).getContentCode());
		return list;
	}
	
	@RequestMapping(value = "/selectCont", method = RequestMethod.POST)
	@ResponseBody
	public List<UserBlogVo> selectCont(String contentCode){
		String id = (String)session.getAttribute("blogId");
		
		List<UserBlogVo> list = blogService.selectCont(id, contentCode);
		System.out.println(list.get(0).getBlogCont());
		
		return list;
	}
}