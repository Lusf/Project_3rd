package kosta.web.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kosta.web.model.service.user.UserService;
import kosta.web.model.vo.UserVo;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping({"joinForm"})
	public String joinForm(){
		return "user/joinForm";
	}
	
	@RequestMapping({"login"})
	public String login(){
		return "user/login";
	}	
	
	@RequestMapping("join")
	public String userJoin(UserVo userVo){
		return null;
	}
	
	public String userLogout(){
		return null;
	}
	@RequestMapping("userSearchById")
	public String userSearchById(String id){
		return null;
	}

	@RequestMapping("blog/{id}")
	public String userBlog(@PathVariable String id){
		
		return "user/blog";
	}
}
