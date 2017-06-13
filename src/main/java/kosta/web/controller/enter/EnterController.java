package kosta.web.controller.enter;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kosta.web.model.service.enter.EnterService;
import kosta.web.model.vo.enter.LookgoodBoardVo;

@Controller
@RequestMapping("entertainment/")
public class EnterController {
	
	@Autowired
	private EnterService enterService;
	
	@RequestMapping("enterMain")
	public String enterMain(){
		return "entertainment/enterMain";
	}
	
	@RequestMapping("detailView")
	public String detailView(){
		return "entertainment/detailView";
	}
	
	@RequestMapping("board/userBoardList")
	public ModelAndView userBoardList(HttpServletRequest request){
		List<LookgoodBoardVo> list = enterService.lookgoodBoardSearchAll();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("entertainment/board/userBoardList");
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping("board/userBoardDetailView/{lgnNum}") 
	public ModelAndView read(HttpServletRequest request, @PathVariable int lgnNum) {
		
		LookgoodBoardVo boardList = enterService.lookgoodBoardSearchByNum(lgnNum);		
		ModelAndView mv = new ModelAndView("entertainment/board/userBoardDetailView", "boardList", boardList);
		return mv;
	}
	
	@RequestMapping("board/userBoardDetailView/delete")
	public String delete(int lgbNum){
		enterService.lookgoodBoardDelete(lgbNum);
		return "redirect:list";
	}
}