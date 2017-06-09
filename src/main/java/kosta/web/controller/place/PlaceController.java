package kosta.web.controller.place;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/travelge")
public class PlaceController {
	
	@RequestMapping("/main")
	public String travelgeMain()
	{
		return "travelge/main";
	}
}