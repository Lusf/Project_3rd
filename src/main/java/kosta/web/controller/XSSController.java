package kosta.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class XSSController {

	@RequestMapping("/xss")
	public String xss(Model model, String name, String addr) {
		//model.addAttribute("name", "<script>alert('xss');</script>");
		
		model.addAttribute("name", name);
		model.addAttribute("addr", addr);
		
		System.out.println("name="+name);
		System.out.println("addr="+addr);
		return "result";
	}
	
}
