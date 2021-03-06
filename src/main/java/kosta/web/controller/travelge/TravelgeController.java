package kosta.web.controller.travelge;

import java.io.File;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kosta.web.model.service.blog.UserBlogService;
import kosta.web.model.service.naver.NaverServiceImpl;
import kosta.web.model.service.travelge.TravelgeService;
import kosta.web.model.vo.AvgScoreVo;
import kosta.web.model.vo.UserVo;
import kosta.web.model.vo.blog.UserBlogVo;
import kosta.web.model.vo.travelge.TravelgeInfoVo;
import kosta.web.model.vo.travelge.TravelgeLatestCommentVo;
import kosta.web.model.vo.travelge.TravelgeRecommandationVo;

@Controller
@RequestMapping("/travelge")
public class TravelgeController {

	@Autowired
	private TravelgeService travelgeService;

	@Autowired
	private UserBlogService userBlogService;
	
	@Autowired
	private NaverServiceImpl naverServiceImpl;

	@RequestMapping("/main")
	public ModelAndView travelgeMain() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("travelge/travelgeMain");
		List<TravelgeRecommandationVo> list = travelgeService.travelgeRecommandSearch(null);
		for (int i = 0; i < list.size(); i++) {
			String temp = list.get(i).getRecommandationDescription();
			int index = temp.indexOf("<img");
			if (index != -1) {
				index += 21;
				String imgsrc = "/controller" + temp.substring(index, index + 56);
				list.get(i).setThumbnail(imgsrc);
				
			}
		}
		
		mv.addObject("list",list);
		List<TravelgeLatestCommentVo> latestComment = travelgeService.latestComment();
		mv.addObject("commentList", latestComment);

		return mv;
	}

	// url 에 해당하는 jsp파일로 이동
	@RequestMapping(value = "{url}",  method = RequestMethod.GET)
	public String url(@PathVariable String url) {

		return "travelge/" + url;

	}

	// 여행지 정보 입력
	@RequestMapping("/travelgeInfoInsert")
	public ModelAndView travelgeInfoInsert(HttpServletRequest request, TravelgeInfoVo travelgeInfoVo) throws Exception {

		String path = request.getSession().getServletContext().getRealPath("/resources/travelge");
		ModelAndView mv = new ModelAndView();
		MultipartFile file = travelgeInfoVo.getFile();

		if (file.getSize() > 0) {
			travelgeInfoVo.setTravelgePhotos(file.getOriginalFilename());
		}

		int result = travelgeService.travelgeInfoInsert(travelgeInfoVo);
		if (result == 0) {
			throw new Exception();
		}

		// 폴더 생성
		File mainFolder = new File(path);
		if (!mainFolder.exists()) {
			mainFolder.mkdir();
		}
		File subFolder = new File(path + "/" + travelgeInfoVo.getContentCode());
		if (!subFolder.exists()) {
			subFolder.mkdir();
		}
		File photosFolder = new File(path + "/" + travelgeInfoVo.getContentCode() + "/photos");
		if (!photosFolder.exists()) {
			photosFolder.mkdir();
		}
		// -----폴더 생성 끝
		if (file.getSize() > 0) {

			try {
				file.transferTo(new File(path + "/" + travelgeInfoVo.getContentCode() + "/photos/"
						+ travelgeInfoVo.getTravelgePhotos()));

			} catch (Exception e) {
			}
		}
		String msg = "";
		if (result == 1)
			msg = "추가완료";
		else
			msg = "추가실패";

		mv.addObject("msg", msg);
		mv.setViewName("admin/travelgeInfoSearch");
		return mv;

	};
	// 여행지 정보 수정

	@RequestMapping("/travelgeInfoUpdate")
	public ModelAndView travelgeInfoUpdate(HttpServletRequest request, TravelgeInfoVo travelgeInfoVo) {

		String path = request.getSession().getServletContext().getRealPath("/resources/travelge");
		MultipartFile file = travelgeInfoVo.getFile();
		ModelAndView mv  = new ModelAndView();
		if (file.getSize() > 0) {
			travelgeInfoVo.setTravelgePhotos(file.getOriginalFilename());
			try {
				file.transferTo(new File(path + "/" + travelgeInfoVo.getContentCode() + "/photos/"
						+ travelgeInfoVo.getTravelgePhotos()));

			} catch (Exception e) {
			}
		}

		int result = travelgeService.travelgeInfoUpdate(travelgeInfoVo);
		String msg = "";
		if (result == 1)
			msg = "수정완료";
		else
			msg = "수정실패";

		mv.addObject("msg", msg);
		mv.setViewName("admin/travelgeInfoSearch");
		return mv;
	};

	// 여행지 정보 수정 페이지로 이동
	@RequestMapping("/travelgeInfoUpdateForm")
	public ModelAndView travelgeInfoUpdateForm(HttpServletRequest request, String contentCode) {

		TravelgeInfoVo travelgeInfoVo = new TravelgeInfoVo();

		travelgeInfoVo.setContentCode(contentCode);

		List<TravelgeInfoVo> list = travelgeService.travelgeInfoSearch2(travelgeInfoVo, 0);

		return new ModelAndView("admin/travelgeInfoUpdateForm", "list", list);

	}

	// 여행지 정보 삭제
	@RequestMapping("/travelgeInfoDelete")
	public ModelAndView travelgeInfoDelete(String contentCode) {
		ModelAndView mv = new ModelAndView();
		int result = travelgeService.travelgeInfoDelete(contentCode);
		String msg = "";
		if (result == 1)
			msg = "삭제완료";
		else
			msg = "삭제실패";

		mv.addObject("msg", msg);
		mv.setViewName("admin/travelgeInfoSearch");
		return mv;


	}

	// 여행지 정보 검색 부분/전체
	@RequestMapping("/travelgeInfoSearch")

	public ModelAndView travelgeInfoSearch(String keyField, String keyWord, String currentPage) {
		int spage = 1;
		String page = currentPage;

		if (page != null)
			spage = Integer.parseInt(page);
		ModelAndView modelAndView = new ModelAndView();
		TravelgeInfoVo travelgeInfoVo = new TravelgeInfoVo();
		if (keyField.equals("all") ) {
			if (keyWord == null || keyWord.equals("")) {
				travelgeInfoVo = null;
			} else {
				travelgeInfoVo.setContentCode(keyWord);
				travelgeInfoVo.setTravelgeAddr(keyWord);
				travelgeInfoVo.setTravelgeName(keyWord);
				travelgeInfoVo.setTravelgeRegion(keyWord);
				travelgeInfoVo.setTravelgeTheme(keyWord);
			}
		}

		if (keyField.equals("contentCode"))
			travelgeInfoVo.setContentCode(keyWord);
		if (keyField.equals("travelgeName"))
			travelgeInfoVo.setTravelgeName(keyWord);
		if (keyField.equals("travelgeAddr"))
			travelgeInfoVo.setTravelgeAddr(keyWord);
		if (keyField.equals("travelgeTheme"))
			travelgeInfoVo.setTravelgeTheme(keyWord);
		if (keyField.equals("travelgeRegion"))
			travelgeInfoVo.setTravelgeRegion(keyWord);

		// 한 화면에 10개의 게시글을 보여지게함
		// 페이지 번호는 총 5개, 이후로는 [다음]으로 표시
		List<TravelgeInfoVo> list = travelgeService.travelgeInfoSearch2(travelgeInfoVo, spage);
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
		modelAndView.setViewName("admin/travelgeInfoSearch");
		return modelAndView;

	};
	

	// 스크롤 페이징 jackson
	@RequestMapping("/travelgeInfoScroll")
	@ResponseBody
	public List<TravelgeInfoVo> travelgeInfoScroll(String index, String currentRegion, String currentTheme) {

		
		int currentPage = Integer.parseInt(index);

		TravelgeInfoVo tempInfo = new TravelgeInfoVo();

		if (!currentRegion.equals("전국")) {
			tempInfo.setTravelgeRegion(currentRegion);
		}
		if (!currentTheme.equals("전체")) {
			tempInfo.setTravelgeTheme(currentTheme);
		}

		List<TravelgeInfoVo> list = travelgeService.travelgeInfoSearch(tempInfo, currentPage);

//		System.out.println("지역 : " + currentRegion);
//		System.out.println("테마 : " + currentTheme);
		
		for(int i = 0; i < list.size(); i++)
		{
			
			list.get(i).setCommentCount(userBlogService.selectByContentCode(list.get(i).getContentCode()).size());
		}
		return list;
	}

	// 스크롤 페이징 jackson
	@RequestMapping("/travelgeSearchScroll")
	@ResponseBody
	public List<TravelgeInfoVo> travelgeSearchScroll(String index, String currentRegion, String currentTheme,
			String keyword) {
//		System.out.println(currentRegion + "/" + currentTheme+"/"+keyword);
		int currentPage = Integer.parseInt(index);

		TravelgeInfoVo tempInfo = new TravelgeInfoVo();

		if (!currentRegion.equals("전국")) {
			tempInfo.setTravelgeRegion(currentRegion);
		}
		if (!currentTheme.equals("전체")) {
			tempInfo.setTravelgeTheme(currentTheme);
		}
		List<TravelgeInfoVo> list = travelgeService.travelgeSearchScroll(tempInfo, currentPage, keyword);

		for(int i = 0; i < list.size(); i++)
		{
			list.get(i).setCommentCount(userBlogService.selectByContentCode(list.get(i).getContentCode()).size());
//			System.out.println(index + " : " + list.get(i).getContentCode());
		}
		return list;
	}

	// DetailView
	@RequestMapping("/detailView/{contentCode}")
	public ModelAndView detailView(@PathVariable String contentCode, Principal principal) {

		String id = "";
		ModelAndView mv = new ModelAndView();
		// 평점도 저장하자
		if (principal != null) {
			UserVo user = (UserVo) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			id = user.getId();
			AvgScoreVo score = travelgeService.selectUserScore(contentCode, id);
			mv.addObject("userScore", score);

		}
		TravelgeInfoVo temp = new TravelgeInfoVo();
		temp.setContentCode(contentCode);

		List<TravelgeInfoVo> list = travelgeService.travelgeInfoSearch(temp, 0);
		List<UserBlogVo> commentList = userBlogService.selectByContentCode(contentCode);
		//검색api
		String keyword = list.get(0).getTravelgeName(); /*+" "+list.get(0).getTravelgeRegion()*/
		
        if(keyword !=null)
        {
            mv.addObject("blogList",naverServiceImpl.searchBook(keyword,5,1));
        }

		mv.setViewName("travelge/detailView");

		mv.addObject("info", list.get(0));
		mv.addObject("commentList", commentList);
		

		return mv;
	}

	// 추천 여행지 정보 추가
	@RequestMapping("travelgeRecommandInsert")
	public ModelAndView travelgeRecommandInsert(TravelgeRecommandationVo travelgeRecommandationVo) {

		int result = travelgeService.travelgeRecommandInsert(travelgeRecommandationVo);

		String msg = null;
		ModelAndView mv = new ModelAndView();

		if (result == 1)
			msg = "추가완료";
		else
			msg = "추가실패";

		mv.addObject("msg", msg);
		mv.setViewName("admin/travelgeReSearch");

		return mv;

	};

	// 추천 여행지 추가 폼으로 이동
	@RequestMapping("travelgeReInsertForm")
	public ModelAndView travelgeRecommandInsertForm(String contentCode) {

		return new ModelAndView("admin/travelgeReInsertForm", "contentConde", contentCode);
	}

	// 추천 여행지 정보 수정폼으로 이동
	@RequestMapping("travelgeReUpdateForm")
	public ModelAndView travelgeReUpdateForm(String contentCode, String title) {

		TravelgeRecommandationVo vo = travelgeService.travelgeRecommandSearch3(contentCode, title);

		return new ModelAndView("admin/travelgeReUpdateForm", "vo", vo);
	}

	// 추천 여행지 정보 수정
	@RequestMapping("/travelgeRecommandUpdate")
	public ModelAndView travelgeRecommandUpdate(TravelgeRecommandationVo travelgeRecommandationVo) {

		int result = travelgeService.travelgeRecommandUpdate(travelgeRecommandationVo);
		String msg = null;
		ModelAndView mv = new ModelAndView();

		if (result == 1)
			msg = "수정완료";
		else
			msg = "수정실패";

		mv.addObject("msg", msg);
		mv.setViewName("admin/travelgeReSearch");

		return mv;

	};

	// 추천 여행지 정보 삭제
	@RequestMapping("travelgeRecommandDelete")
	public ModelAndView travelgeRecommandDelete(String contentCode, String title) {

		int result = travelgeService.travelgeRecommandDelete(contentCode, title);
		String msg = null;
		ModelAndView mv = new ModelAndView();

		if (result == 1)
			msg = "삭제완료";
		else
			msg = "삭제실패";

		mv.addObject("msg", msg);
		mv.setViewName("admin/travelgeReSearch");
		return mv;

	};

	// 추천 여행지 정보 검색
	@RequestMapping("/travelgeRecommandSearch")
	public ModelAndView travelgeRecommandSearch(String keyField, String keyWord, String currentPage) {

		int spage = 1;
		String page = currentPage;
		String contentCode = null;
		if (page != null)
			spage = Integer.parseInt(page);
		ModelAndView modelAndView = new ModelAndView();

		if (keyField.equals("all")) {
			contentCode = null;
		}

		else {
			contentCode = keyWord;
		}

		// 한 화면에 10개의 게시글을 보여지게함
		// 페이지 번호는 총 5개, 이후로는 [다음]으로 표시
		List<TravelgeRecommandationVo> list = travelgeService.travelgeRecommandSearch2(contentCode, spage);
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
		modelAndView.setViewName("admin/travelgeReSearch");
		return modelAndView;

	};
	
	@RequestMapping("/travelgeWishListUpdate")
	@ResponseBody
	public int travelgeWishListUpdate(String contentCode){
		int result = 0;
		if(!SecurityContextHolder.getContext().getAuthentication().getPrincipal().equals("anonymousUser"))
		{
			UserVo user = (UserVo) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			String id = user.getId();
			result = travelgeService.travelgeWishListUpdate(id, contentCode);
		}
		return result;
	}


	@RequestMapping("/travelgeScoreUpdate")
	@ResponseBody
	public Map<Object, Object> travelgeScoreUpdate(String value, String contentCode) {

		UserVo user = (UserVo) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String id = user.getId();
		int result = 0;
		AvgScoreVo score = travelgeService.selectUserScore(contentCode, id);
		double userScore = Double.parseDouble(value);
		if (score == null) {
			result = travelgeService.travelgeScoreInsert(id, contentCode, userScore);
		}
		result = travelgeService.travelgeScoreUpdate(id, contentCode, userScore);
		
		TravelgeInfoVo tra = new TravelgeInfoVo();
		tra.setContentCode(contentCode);
		double temp = travelgeService.travelgeInfoSearch(tra,0).get(0).getAvgScoreVo().getScore();
		int count = travelgeService.travelgeInfoSearch(tra,0).get(0).getAvgScoreVo().getPersonCount();
		Map<Object, Object> map = new HashMap<>();
		map.put("score", temp);
		map.put("count", count);
		
		return map;

	};

	// 지도 주위 리스트 불러오기
	@RequestMapping("/searchAroundMe")
	@ResponseBody
	public List<TravelgeInfoVo> searchAroundMe(String lat, String lon) {

		return travelgeService.searchAroundMe(lat, lon);
	}

}