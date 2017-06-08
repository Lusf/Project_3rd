package kosta.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping(value = "/")
	public String home() {
		
		return "index";
	}
	
	@RequestMapping("login/joinForm")
	public String joinForm(){
		
		return "login/joinForm";
	}
	
	@RequestMapping("login/login")
	public String login(){
		
		return "login/login";
	}
	
	
}
