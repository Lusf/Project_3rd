package kosta.web.controller.blog;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kosta.web.model.service.blog.UserBlogService;
import kosta.web.model.vo.blog.UserBlogVo;

@Controller
@RequestMapping("blog")
public class UserBlogController {
	
	@Autowired
	private UserBlogService blogService;
	
	@Autowired
	private HttpSession session;

	@RequestMapping("/{id}")
	public String userBlog(@PathVariable String id){
		session.setAttribute("id", id);
		return "blog/blog";
	}
	
	@RequestMapping("/selectTitle")
	@ResponseBody
	public List<String> selectTitle(String category){
		System.out.println("blogTitle: "+session.getAttribute("id")+", "+category);
		
		return blogService.blogTitle((String)session.getAttribute("id"), category);
	}
}