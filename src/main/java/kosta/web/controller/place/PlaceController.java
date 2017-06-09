package kosta.web.controller.place;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kosta.web.model.service.place.PlaceService;
import kosta.web.model.vo.AvgScoreVo;
import kosta.web.model.vo.place.TravelgeInfoVo;
import kosta.web.model.vo.place.TravelgeRecommandationVo;

@Controller
@RequestMapping("/travelge")
public class PlaceController {
	
	@Autowired
	private PlaceService placeService;
	
	@RequestMapping("/main")
	public String travelgeMain()
	{
		return "travelge/main";
	}
	
	public void travelgeInfoInsert(TravelgeInfoVo travelgeInfoVo){
		
	};
	
	public void travelgeInfoUpdate(TravelgeInfoVo travelgeInfoVo){
		
	};
	
	public void travelgeInfoDelete(String contentCode){;
	
	}
	
	public void travelgeInfoSearch(TravelgeInfoVo travelgeInfoVo){
		
	};
	
	public void travelgeRecommandInsert(TravelgeRecommandationVo travelgeRecommandationVo){
		
	};
	
	public void travelgeRecommandUpdate(TravelgeRecommandationVo travelgeRecommandationVo){
		
	};
	
	public void travelgeRecommandDelete(String contentCode){
		
	};
	
	public void travelgeRecommandSearch(String contentCode){
		
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