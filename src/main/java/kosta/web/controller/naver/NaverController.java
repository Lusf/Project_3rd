package kosta.web.controller.naver;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kosta.web.model.service.naver.NaverServiceImpl;

@Controller
public class NaverController {
	
    @Autowired
    private NaverServiceImpl naverServiceImpl; 
    
    //키워드가 있을때도 있고 없을때도있음 
    //있을때는 가져가고 없을때는 안가져가고 
    @RequestMapping("blogList.do")
    public ModelAndView naverBlogList(@RequestParam(required=false)String keyword){
        ModelAndView mav = new ModelAndView();
        
        if(keyword !=null)
        {
            mav.addObject("blogList",naverServiceImpl.searchBook(keyword,10,1));
        }
        mav.setViewName("travelge/test");
        return mav;
    }
}

