package kosta.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/travelge")
public class TravelgeController {

	@RequestMapping("/main")
	public String travelgeMain()
	{
		return "travelge/main";
	}
}
