package kosta.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping(value = "/")
	public String home() {
		return "index";
	}
<<<<<<< HEAD
	
	@RequestMapping({"login/joinForm","{folder}/login/joinForm"})
	public String joinForm(){
		return "login/joinForm";
	}
	
	@RequestMapping({"login/login","{folder}/login/login"})
	public String login(){
		return "login/login";
	}	
=======

	@RequestMapping("eating/eating_Main")
	public String eatingMain(){
		return "eating/eating_Main";
	}
>>>>>>> 540031340cbae5b07c32476244439e0b56b30d43
}