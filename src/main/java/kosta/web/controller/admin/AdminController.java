package kosta.web.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller()
@RequestMapping("admin")
public class AdminController {

	
	@RequestMapping("{url}")
	public String url(@PathVariable String url){
		
		return"admin/"+url;
	}
}
