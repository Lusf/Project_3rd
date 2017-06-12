package kosta.web.controller.blog;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserBlog {

	@RequestMapping("blog/{id}")
	public String userBlog(@PathVariable String id){
		
		return "user/blog";
	}
}