package kosta.web.controller.travelge;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kosta.web.model.service.travelge.TravelgeService;
import kosta.web.model.vo.AvgScoreVo;
import kosta.web.model.vo.travelge.TravelgeInfoVo;
import kosta.web.model.vo.travelge.TravelgeRecommandationVo;

@Controller
@RequestMapping("/travelge")
public class TravelgeController {
	
	@Autowired
	private TravelgeService travelgeService;
	
	@RequestMapping("/main")
	public String travelgeMain()
	{
		return "travelge/travelgeMain";
	}
	// url 에 해당하는 jsp파일로 이동
	@RequestMapping("{url}")
	public String url(@PathVariable String url){
	
		return "travelge/"+url;
	}
	// 여행지 정보 입력
	public void travelgeInfoInsert(TravelgeInfoVo travelgeInfoVo){
		
	};
	// 여행지 정보 수정
	public void travelgeInfoUpdate(TravelgeInfoVo travelgeInfoVo){
		
	};
	// 여행지 정보 삭제
	public void travelgeInfoDelete(String contentCode){;
	
	}
	// 여행지 정보 검색 부분/전체
	@RequestMapping("/travelgeInfoSearch")

	public ModelAndView travelgeInfoSearch(TravelgeInfoVo travelgeInfoVo, String currentPage){
        int spage = 1;
        String page = currentPage;
        
        if(page != null)
            spage = Integer.parseInt(page);
        ModelAndView modelAndView = new ModelAndView();

        int listCount = 100;			
	        // 한 화면에 10개의 게시글을 보여지게함
	        // 페이지 번호는 총 5개, 이후로는 [다음]으로 표시
	        List<TravelgeInfoVo> list = travelgeService.travelgeInfoSearch(travelgeInfoVo, spage);
	        // 전체 페이지 수
	        int maxPage = (int)(listCount/10.0 + 0.9);
	        //시작 페이지 번호
	        int startPage = (int)(spage/5.0 + 0.8) * 5 - 4;
	        //마지막 페이지 번호
	        int endPage = startPage + 9;
	        if(endPage > maxPage)    endPage = maxPage;
	        
	        // 4개 페이지번호 저장
	        modelAndView.addObject("spage", spage);
	        modelAndView.addObject("maxPage", maxPage);
	        modelAndView.addObject("startPage", startPage);
	        modelAndView.addObject("endPage", endPage);
	        modelAndView.addObject("listCount", listCount);
	        modelAndView.addObject("list", list);

	        modelAndView.setViewName("admin/travelgeInfo");
		return modelAndView;

	};
	
	// 스크롤 페이징  jackson
	@RequestMapping("/travelgeInfoScroll")
	@ResponseBody
	public List<TravelgeInfoVo> travelgeInfoScroll(String index){
		
		System.out.println(index);
		int currentPage = Integer.parseInt(index);
		
		List<TravelgeInfoVo> list = travelgeService.travelgeInfoSearch(null ,currentPage);
		return list;
	}
	
	//DetailView
	@RequestMapping("/detailView/{contentCode}")
	public ModelAndView detailView(@PathVariable String contentCode){
		
		//System.out.println(contentCode);
		TravelgeInfoVo temp = new TravelgeInfoVo();
		temp.setContentCode(contentCode);
		List<TravelgeInfoVo> list = travelgeService.travelgeInfoSearch(temp ,0);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("travelge/detailView");
		mv.addObject("info", list.get(0));
		return mv;
	}
	
	// 추천 여행지 정보 추가 
	@RequestMapping("travelgeRecommandInsert")
	public String travelgeRecommandInsert(TravelgeRecommandationVo travelgeRecommandationVo){

		travelgeService.travelgeRecommandInsert(travelgeRecommandationVo);
		
		return "admin/index";
		
	};
	// 추천 여행지 정보 수정
	public void travelgeRecommandUpdate(TravelgeRecommandationVo travelgeRecommandationVo){
		
	};
	// 추천 여행지 정보 삭제
	public void travelgeRecommandDelete(String contentCode){
		
	};
	
	// 추천 여행지 정보 검색
	@RequestMapping("/travelgeRecommandSearch")
	public String travelgeRecommandSearch(String contentCode){
	
		if(contentCode != null)
		{
			return "travelge/singlePage";
		}
		return "travelge/singlePage";
	};
	
	
	
	public void travelgeWishListAdd(AvgScoreVo avgScoreVo){
		
	};
	
	public void travelgeWishListDelete(AvgScoreVo avgScoreVo){
		
	};
	
	public void travelgeScoreInsert(AvgScoreVo avgScoreVo){
		
	};
	
	public void travelgeScoreUpdate(AvgScoreVo avgScoreVo){
		
	};
	
	public void searchAroundMe(String travelgeRegion){
		
	};
}