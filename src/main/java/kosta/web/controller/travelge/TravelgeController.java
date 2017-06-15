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
	// url �� �ش��ϴ� jsp���Ϸ� �̵�
	@RequestMapping("{url}")
	public String url(@PathVariable String url){
	
		return "travelge/"+url;
	}
	// ������ ���� �Է�
	@RequestMapping("/travelgeInfoInsert")
	public void travelgeInfoInsert(TravelgeInfoVo travelgeInfoVo){
		
		System.out.println(travelgeInfoVo);
		
	};
	// ������ ���� ����
	public void travelgeInfoUpdate(TravelgeInfoVo travelgeInfoVo){
		
	};
	// ������ ���� ����
	@RequestMapping("/travelgeInfoDelete")
	public void travelgeInfoDelete(String contentCode){;
	
	System.out.println(contentCode);
	
	}
	// ������ ���� �˻� �κ�/��ü
	@RequestMapping("/travelgeInfoSearch")

	public ModelAndView travelgeInfoSearch(String keyField, String keyWord, String currentPage){
        int spage = 1;
        String page = currentPage;
        
        if(page != null)
            spage = Integer.parseInt(page);
        ModelAndView modelAndView = new ModelAndView();
        TravelgeInfoVo travelgeInfoVo = new TravelgeInfoVo();
        if(keyField.equals("all"))travelgeInfoVo=null;
        if(keyField.equals("contentCode"))travelgeInfoVo.setContentCode(keyWord);
        if(keyField.equals("travelgeName"))travelgeInfoVo.setTravelgeName(keyWord);
        if(keyField.equals("travelgeAddr"))travelgeInfoVo.setTravelgeAddr(keyWord);
        if(keyField.equals("travelgeTheme"))travelgeInfoVo.setTravelgeTheme(keyWord);
        if(keyField.equals("travelgeRegion"))travelgeInfoVo.setTravelgeRegion(keyWord);
        
	        // �� ȭ�鿡 10���� �Խñ��� ����������
	        // ������ ��ȣ�� �� 5��, ���ķδ� [����]���� ǥ��
	        List<TravelgeInfoVo> list = travelgeService.travelgeInfoSearch(travelgeInfoVo, spage);
	        int listCount = 0;
	        if(list != null && list.size() != 0){
	        listCount = list.get(0).getCnt();	
	        }
	        // ��ü ������ ��
	        int maxPage = (int)(listCount/10.0 + 0.9);
	        //���� ������ ��ȣ
	        int startPage = (int)(spage/5.0 + 0.8) * 5 - 4;
	        //������ ������ ��ȣ
	        int endPage = startPage + 9;
	        if(endPage > maxPage)    endPage = maxPage;
	        
	        // 4�� ��������ȣ ����
	        modelAndView.addObject("spage", spage);
	        modelAndView.addObject("maxPage", maxPage);
	        modelAndView.addObject("startPage", startPage);
	        modelAndView.addObject("endPage", endPage);
	        modelAndView.addObject("listCount", listCount);
	        modelAndView.addObject("list", list);
	        modelAndView.addObject("keyField",keyField);
	        modelAndView.addObject("keyWord",keyWord);
	        modelAndView.setViewName("admin/travelgeInfo");
		return modelAndView;

	};
	
	// ��ũ�� ����¡  jackson
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
	
	// ��õ ������ ���� �߰� 
	@RequestMapping("travelgeRecommandInsert")
	public String travelgeRecommandInsert(TravelgeRecommandationVo travelgeRecommandationVo){

		travelgeService.travelgeRecommandInsert(travelgeRecommandationVo);
		
		return "admin/index";
		
	};
	// ��õ ������ ���� ����
	public void travelgeRecommandUpdate(TravelgeRecommandationVo travelgeRecommandationVo){
		
	};
	// ��õ ������ ���� ����
	public void travelgeRecommandDelete(String contentCode){
		
	};
	
	// ��õ ������ ���� �˻�
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