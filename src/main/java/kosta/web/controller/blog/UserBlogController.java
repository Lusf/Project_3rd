package kosta.web.controller.blog;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kosta.web.model.service.blog.UserBlogService;
import kosta.web.model.vo.blog.UserBlogVo;

@Controller
public class UserBlogController {
	
	@Autowired
	private UserBlogService blogService;

	@RequestMapping("blog/{id}")
	public ModelAndView userBlog(@PathVariable String id){
		List<UserBlogVo> list = blogService.userBlog(id);
		return new ModelAndView("blog/blog", "list", list);
	}
	
}