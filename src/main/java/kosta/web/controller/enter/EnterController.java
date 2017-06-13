package kosta.web.controller.enter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("entertainment/")
public class EnterController {
	
	@RequestMapping("enterMain")
	public String enterMain(){
		return "entertainment/enterMain";
	}
	
	@RequestMapping("detailView")
	public String detailView(){
		return "entertainment/detailView";
	}
}