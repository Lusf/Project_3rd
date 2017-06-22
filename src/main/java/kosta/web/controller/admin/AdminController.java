package kosta.web.controller.admin;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kosta.web.model.service.admin.AdminService;

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
		
		
		
		
		
		
		mv.setViewName("admin/index");
		return mv;
	}
	
	@RequestMapping("{folder}/{url}")
	public String forderUrl(@PathVariable String folder, @PathVariable String url){
		return "admin/"+folder+"/"+url;
	}
}
