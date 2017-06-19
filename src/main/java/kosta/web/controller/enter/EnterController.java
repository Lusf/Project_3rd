package kosta.web.controller.enter;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kosta.web.model.service.enter.EnterService;
import kosta.web.model.vo.enter.LookInfoVo;
import kosta.web.model.vo.enter.LookgoodBoardVo;
import kosta.web.model.vo.travelge.TravelgeInfoVo;

@Controller
@RequestMapping("entertainment/")
public class EnterController {
   
   @Autowired
   private EnterService enterService;
   

/*   //볼거리 메인
   @RequestMapping("new/enterMain")
   public String enterMain(){
      return "entertainment/new/enterMain";
   }*/
   
   //볼거리 리스트 (카테고리에 따른)
   @RequestMapping("new/enterList/{lookCate}")
   public ModelAndView enterList(@PathVariable String lookCate){
	     
	   	//session.setAttribute("lookCate", lookCate);
	   
	   	LookInfoVo lookInfoVo = new LookInfoVo();
	   	lookInfoVo.setLookCate(lookCate);
	   	
	   	List<LookInfoVo> dbLookInfoList =  enterService.lookInfoSearch(lookInfoVo);
	      
	    ModelAndView mv = new ModelAndView();
	     mv.setViewName("entertainment/new/enterList");
	      
	     
	      mv.addObject("dbLookInfoList", dbLookInfoList);
	      mv.addObject("lookCate", lookCate);
/*	      
	      if(lookInfoList.get(0).getLookCate().equals("movie")){
	    	  mv.addObject("lookInfoListM", lookInfoList)
	      }*/
	      
	      System.out.println(dbLookInfoList.get(0).getLookCate());
	      return mv;
   }
   
/*   @RequestMapping("new/enterList")
   public String enterList(){
	   return "entertainment/new/enterList";
   }*/
   
   //볼거리 상세화면
   @RequestMapping("new/enterDetailView/{contentCode}")
   public ModelAndView enterDetailView(HttpSession session, @PathVariable String contentCode){
	   session.setAttribute("contentCode", contentCode);
	   ModelAndView mv = new ModelAndView();
	   
	   LookInfoVo lookInfoOne = enterService.lookInfoSearchByCode(contentCode);
	   
	   mv.setViewName("entertainment/new/enterDetailView");     
	   mv.addObject("lookInfoOne", lookInfoOne);
	  
	   return mv;
   }
   
   @RequestMapping("detailView")
   public String detailView(){
      return "entertainment/detailView";
   }
   
   //게시판 리스트
   @RequestMapping("board/userBoardList")
   public ModelAndView userBoardList(HttpServletRequest request){
      List<LookgoodBoardVo> list = enterService.lookgoodBoardSearchAll();
      
      ModelAndView mv = new ModelAndView();
      mv.setViewName("entertainment/board/userBoardList");
      mv.addObject("list", list);
      return mv;
   }
   
   //게시글 상세보기
   @RequestMapping("board/userBoardDetailView/{lgbNum}") 
   public ModelAndView read(HttpServletRequest request, @PathVariable int lgbNum) {
      
      LookgoodBoardVo boardList = enterService.lookgoodBoardSearchByNum(lgbNum);      
      ModelAndView mv = new ModelAndView("entertainment/board/userBoardDetailView", "boardList", boardList);
      return mv;
   }
   
   //게시글 삭제하기
   @RequestMapping("board/userBoardDetailView/delete")
   public String delete(HttpServletRequest request, LookgoodBoardVo lookgoodBoardVo){
      int result = enterService.lookgoodBoardDelete(lookgoodBoardVo);
      return "redirect:/entertainment/board/userBoardList";
   }   
   
   
   //게시글 작성하기(작성폼으로 이동)
   @RequestMapping("board/userBoardWrite")
   public String writeForm(HttpServletRequest request){
      return "entertainment/board/userBoardWrite";
   }
   
   //게시글 작성하기
   @RequestMapping("board/userBoardWrite/insert")
   public String write(HttpServletRequest request, LookgoodBoardVo lookgoodBoardVo){
      enterService.lookgoodBoardInsert(lookgoodBoardVo);
      return "redirect:/entertainment/board/userBoardList";
   }
   
   //게시글 수정하기(수정폼으로 이동)
   @RequestMapping("board/userBoardUpdate")
   public ModelAndView updateForm(HttpServletRequest request, int lgbNum){
      LookgoodBoardVo boardUpBefore = enterService.lookgoodBoardSearchByNum(lgbNum);
      return new ModelAndView("entertainment/board/userBoardUpdate", "boardUpBefore", boardUpBefore);
   }

   
   //게시글 수정하기
   @RequestMapping("board/userBoardUpdate/update")
   public ModelAndView update(HttpServletRequest request, LookgoodBoardVo lookgoodBoardVo){
      enterService.lookgoodBoardUpdate(lookgoodBoardVo);
      LookgoodBoardVo boardUp =
            enterService.lookgoodBoardSearchByNum(lookgoodBoardVo.getLgbNum());
      return new ModelAndView("entertainment/board/userBoardDetailView", "boardList", boardUp);
   }
   
   //메인 볼거리 정보 가져오기
   @RequestMapping("new/enterMain")
   public ModelAndView enterContents(LookInfoVo lookInfoVo){
      List<LookInfoVo> lookInfoList =  enterService.lookInfoSearch(lookInfoVo);
      
      ModelAndView mv = new ModelAndView();
      mv.setViewName("entertainment/new/enterMain");
      mv.addObject("lookInfoList", lookInfoList);
     // mv.addObject("lookCate", lookInfoVo.getLookCate());
    
/*      
      if(lookInfoVo.getAvgScoreVo().getScore()==0){
         
      }*/
/*      
      int result = enterService.lookScoreInsert(lookInfoVo.getAvgScoreVo());
      System.out.println("score result : " + result);*/
      
      System.out.println(lookInfoList);
      return mv;
   }
   
   //별점등록하기
   //@RequestMapping("")
   
   
   //---------------------------
   /** admin 페이지 */
   
   @RequestMapping("enterInfoSearch")
   public ModelAndView enterInfoSearch(String keyField, String keyWord, String currentPage) {
		int spage = 1;
		String page = currentPage;

		if (page != null)
			spage = Integer.parseInt(page);
		ModelAndView modelAndView = new ModelAndView();
		LookInfoVo lookInfoVo = new LookInfoVo();
		
		if (keyField.equals("all")) {
			if (keyWord == null) {
				lookInfoVo = null;
			} else {
				lookInfoVo.setContentCode(keyWord);
				lookInfoVo.setLookCate(keyWord);
				lookInfoVo.setLookTitle(keyWord);
				lookInfoVo.setLookStory(keyWord);
				lookInfoVo.setLookMaker(keyWord);
				lookInfoVo.setLookGenre(keyWord);
				lookInfoVo.setLookStartDate(keyWord);
				lookInfoVo.setLookLastDate(keyWord);
				lookInfoVo.setLookLoca(keyWord);
			}
		}
		if (keyField.equals("contentCode"))
			lookInfoVo.setContentCode(keyWord);
		if (keyField.equals("lookCate"))
			lookInfoVo.setLookCate(keyWord);
		if (keyField.equals("lookTitle"))
			lookInfoVo.setLookTitle(keyWord);
		if (keyField.equals("lookStory"))
			lookInfoVo.setLookStory(keyWord);
		if (keyField.equals("lookMaker"))
			lookInfoVo.setLookMaker(keyWord);
		if (keyField.equals("lookGenre"))
			lookInfoVo.setLookGenre(keyWord);
		if (keyField.equals("lookStartDate"))
			lookInfoVo.setLookStartDate(keyWord);
		if (keyField.equals("lookLastDate"))
			lookInfoVo.setLookLastDate(keyWord);
		if (keyField.equals("lookLoca"))
			lookInfoVo.setLookLoca(keyWord);

		// 한 화면에 10개의 게시글을 보여지게함
		// 페이지 번호는 총 5개, 이후로는 [다음]으로 표시
		List<LookInfoVo> list = enterService.enterInfoSearch(lookInfoVo, spage);
		int listCount = 0;
		if (list != null && list.size() != 0) {
			listCount = list.get(0).getCnt();
		}
		// 전체 페이지 수
		int maxPage = (int) (listCount / 10.0 + 0.9);
		// 시작 페이지 번호
		int startPage = (int) (spage / 5.0 + 0.8) * 5 - 4;
		// 마지막 페이지 번호
		int endPage = startPage + 9;
		if (endPage > maxPage)
			endPage = maxPage;

		// 4개 페이지번호 저장
		modelAndView.addObject("spage", spage);
		modelAndView.addObject("maxPage", maxPage);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);
		modelAndView.addObject("listCount", listCount);
		modelAndView.addObject("list", list);
		modelAndView.addObject("keyField", keyField);
		modelAndView.addObject("keyWord", keyWord);
		modelAndView.setViewName("admin/enter/enterInfoSearch");
		
		return modelAndView;
	};
}