package kosta.web.controller.travelge;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public ModelAndView travelgeInfoSearch(TravelgeInfoVo travelgeInfoVo){
		
		
		return new ModelAndView("admin/travelgeInfo", "list", travelgeService.travelgeInfoSearch(travelgeInfoVo));
	};
	
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