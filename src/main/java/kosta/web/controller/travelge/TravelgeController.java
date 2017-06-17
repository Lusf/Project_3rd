package kosta.web.controller.travelge;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kosta.web.model.service.blog.UserBlogService;
import kosta.web.model.service.travelge.TravelgeService;
import kosta.web.model.vo.AvgScoreVo;
import kosta.web.model.vo.blog.UserBlogVo;
import kosta.web.model.vo.travelge.TravelgeInfoVo;
import kosta.web.model.vo.travelge.TravelgeRecommandationVo;

@Controller
@RequestMapping("/travelge")
public class TravelgeController {

	@Autowired
	private TravelgeService travelgeService;

	@Autowired
	private UserBlogService userBlogService;

	@RequestMapping("/main")
	public ModelAndView travelgeMain() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("travelge/travelgeMain");
		List<TravelgeRecommandationVo> list = travelgeService.travelgeRecommandSearch(null);
		for (int i = 0; i < list.size(); i++) {
			String card = "card" + (i + 1);
			mv.addObject(card, list.get(i));

			String temp = list.get(i).getRecommadationDescription();
			int index = temp.indexOf("<img");
			if (index != -1) {
				index += 21;
				// String imgsrc =
				// "${pageContex.request.contextPath}"+temp.substring(index,
				// index+56);
				String imgsrc = "/controller" + temp.substring(index, index + 56);
				System.out.println(imgsrc);
				mv.addObject(card + "Thumbnail", imgsrc);
			}
		}

		return mv;
	}

	// url 에 해당하는 jsp파일로 이동
	@RequestMapping("{url}")
	public String url(@PathVariable String url) {

		return "travelge/" + url;

	}

	// 여행지 정보 입력
	@RequestMapping("/travelgeInfoInsert")
	public String travelgeInfoInsert(HttpServletRequest request, TravelgeInfoVo travelgeInfoVo) throws Exception {

		String path = request.getSession().getServletContext().getRealPath("/resources/travelge");

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
		if (photosFolder.exists()) {
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

		return "redirect:/";

	};
	// 여행지 정보 수정

	@RequestMapping("/travelgeInfoUpdate")
	public String travelgeInfoUpdate(HttpServletRequest request, TravelgeInfoVo travelgeInfoVo) {

		String path = request.getSession().getServletContext().getRealPath("/resources/travelge");
		MultipartFile file = travelgeInfoVo.getFile();

		if (file.getSize() > 0) {
			travelgeInfoVo.setTravelgePhotos(file.getOriginalFilename());
			try {
				file.transferTo(new File(path + "/" + travelgeInfoVo.getContentCode() + "/photos/"
						+ travelgeInfoVo.getTravelgePhotos()));

			} catch (Exception e) {
			}
		}
		System.out.println(travelgeInfoVo.toString());
		travelgeService.travelgeInfoUpdate(travelgeInfoVo);

		return "admin/travelgeInfoSearch";
	};

	// 여행지 정보 수정 페이지로 이동
	@RequestMapping("/travelgeInfoUpdateForm")
	public ModelAndView travelgeInfoUpdateForm(HttpServletRequest request, String contentCode) {

		TravelgeInfoVo travelgeInfoVo = new TravelgeInfoVo();

		travelgeInfoVo.setContentCode(contentCode);

		List<TravelgeInfoVo> list = travelgeService.travelgeInfoSearch(travelgeInfoVo, 0);

		return new ModelAndView("admin/travelgeInfoUpdateForm", "list", list);

	}

	// 여행지 정보 삭제
	@RequestMapping("/travelgeInfoDelete")
	public String travelgeInfoDelete(String contentCode) {
		;

		travelgeService.travelgeInfoDelete(contentCode);

		return "admin/travelgeInfoSearch";

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
		if (keyField.equals("all")) {
			if (keyWord == null) {
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
		List<TravelgeInfoVo> list = travelgeService.travelgeInfoSearch(travelgeInfoVo, spage);
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

		// System.out.println(index);
		// System.out.println("현재 지역 : " + currentRegion + " / 현재 테마 : "
		// +
		// currentTheme);
		int currentPage = Integer.parseInt(index);

		TravelgeInfoVo tempInfo = new TravelgeInfoVo();

		if (!currentRegion.equals("전국")) {
			tempInfo.setTravelgeRegion(currentRegion);
		}
		if (!currentTheme.equals("전체")) {
			tempInfo.setTravelgeTheme(currentTheme);
		}

		List<TravelgeInfoVo> list = travelgeService.travelgeInfoSearch(tempInfo, currentPage);
		return list;
	}

	// DetailView
	@RequestMapping("/detailView/{contentCode}")
	public ModelAndView detailView(@PathVariable String contentCode) {

		// System.out.println(contentCode);
		TravelgeInfoVo temp = new TravelgeInfoVo();
		temp.setContentCode(contentCode);
		List<TravelgeInfoVo> list = travelgeService.travelgeInfoSearch(temp, 0);
		List<UserBlogVo> commentList = userBlogService.selectByContentCode(contentCode);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("travelge/detailView");
		mv.addObject("info", list.get(0));
		mv.addObject("commentList", commentList);

		return mv;
	}

	// 추천 여행지 정보 추가
	@RequestMapping("travelgeRecommandInsert")
	public String travelgeRecommandInsert(TravelgeRecommandationVo travelgeRecommandationVo) {

		travelgeService.travelgeRecommandInsert(travelgeRecommandationVo);

		return "admin/index";

	};

	// 추천 여행지 정보 수정
	public void travelgeRecommandUpdate(TravelgeRecommandationVo travelgeRecommandationVo) {

	};

	// 추천 여행지 정보 삭제
	public void travelgeRecommandDelete(String contentCode) {

	};

	// 추천 여행지 정보 검색
	@RequestMapping("/travelgeRecommandSearch")
	public String travelgeRecommandSearch(String contentCode) {

		if (contentCode != null) {
			return "travelge/singlePage";
		}
		return "travelge/singlePage";
	};

	public void travelgeWishListAdd(AvgScoreVo avgScoreVo) {

	};

	public void travelgeWishListDelete(AvgScoreVo avgScoreVo) {

	};

	public void travelgeScoreInsert(AvgScoreVo avgScoreVo) {

	};

	public void travelgeScoreUpdate(AvgScoreVo avgScoreVo) {

	};

	// 지도 주위 리스트 불러오기
	@RequestMapping("/searchAroundMe")
	@ResponseBody
	public List<TravelgeInfoVo> searchAroundMe(String lat, String lon) {

		// System.out.println(lat);
		// System.out.println(lon);

		return travelgeService.searchAroundMe(lat, lon);
	}
}