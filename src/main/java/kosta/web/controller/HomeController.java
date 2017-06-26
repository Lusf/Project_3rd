package kosta.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

   @RequestMapping(value = "/")
   public String home() {
      return "index";
   }
   
   @RequestMapping(value="privacyTerms")
   public ModelAndView privacyTerms(String choice){
	   
	   
	   return new ModelAndView("privacyTerms", "choice", choice);
   }
}