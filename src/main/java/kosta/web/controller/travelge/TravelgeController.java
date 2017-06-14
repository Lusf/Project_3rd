package kosta.web.controller.travelge;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping("{url}")
	public String url(@PathVariable String url){
	
		return "travelge/"+url;
	}
	
	public void travelgeInfoInsert(TravelgeInfoVo travelgeInfoVo){
		
	};
	
	public void travelgeInfoUpdate(TravelgeInfoVo travelgeInfoVo){
		
	};
	
	public void travelgeInfoDelete(String contentCode){;
	
	}

	@RequestMapping("/travelgeInfoSearch")
	public String travelgeInfoSearch(TravelgeInfoVo travelgeInfoVo){
		
		return "travelge/travelgeList";
	};
	@RequestMapping("travelgeRecommandInsert")
	public String travelgeRecommandInsert(TravelgeRecommandationVo travelgeRecommandationVo){

		travelgeService.travelgeRecommandInsert(travelgeRecommandationVo);
		
		return "admin/index";
		
	};
	
	public void travelgeRecommandUpdate(TravelgeRecommandationVo travelgeRecommandationVo){
		
	};
	
	public void travelgeRecommandDelete(String contentCode){
		
	};
	
	
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