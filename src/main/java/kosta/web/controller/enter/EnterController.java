package kosta.web.controller.enter;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kosta.web.model.service.enter.EnterService;
import kosta.web.model.vo.enter.LookInfoVo;
import kosta.web.model.vo.enter.LookgoodBoardVo;

@Controller
@RequestMapping("entertainment/")
public class EnterController {
   
   @Autowired
   private EnterService enterService;
   
   @RequestMapping("new/enterMain")
   public String enterMain(){
      return "entertainment/new/enterMain";
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
   @RequestMapping("enterMain")
   public ModelAndView enterContents(LookInfoVo lookInfoVo){
      List<LookInfoVo> lookInfoList =  enterService.lookInfoSearch(lookInfoVo);
      
      ModelAndView mv = new ModelAndView();
      mv.setViewName("entertainment/enterMain");
      mv.addObject("lookInfoList", lookInfoList);
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
}