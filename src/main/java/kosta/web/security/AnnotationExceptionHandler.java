package kosta.web.security;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class AnnotationExceptionHandler {
	@ExceptionHandler(Exception.class)
	public void handleException(Exception e) {
		System.out.println("exception");
	}

	@ExceptionHandler(RuntimeException.class)
	public ModelAndView handleRuntimeException(RuntimeException e) {
		ModelAndView mv = new ModelAndView("exceptionHandler");
		mv.addObject("errorMSG", e.getMessage());
		mv.setViewName("error/404");
		return mv;
	}
}
