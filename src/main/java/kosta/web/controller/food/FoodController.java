package kosta.web.controller.food;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FoodController {
	@RequestMapping("eating/eatingMain")
	public String eatingMain(){
		
		return "eating/eatingMain";
	}
}