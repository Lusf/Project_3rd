package kosta.web.controller.admin;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping("{folder}/{url}")
	public String forderUrl(@PathVariable String folder, @PathVariable String url){
		return "admin/"+folder+"/"+url;
	}
}
