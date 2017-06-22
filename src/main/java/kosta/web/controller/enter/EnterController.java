package kosta.web.controller.enter;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
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

	/*
	 * //���Ÿ� ����
	 * 
	 * @RequestMapping("new/enterMain") public String enterMain(){ return
	 * "entertainment/new/enterMain"; }
	 */

	// ���Ÿ� ����Ʈ (ī�װ��� ����)
	@RequestMapping("new/enterList/{lookCate}")
	public ModelAndView enterList(@PathVariable String lookCate, String keyField, String keyWord, String currentPage) {

		

		LookInfoVo lookInfoVo = new LookInfoVo();
		
		if(lookCate.equals("movie")){
			lookInfoVo.setLookCate("��ȭ");
			System.out.println("��ȭ����");
		}else if(lookCate.equals("concert")){
			lookInfoVo.setLookCate("����/��ȭ");
			System.out.println("����/��ȭ����");
	
		}
		
		System.out.println("lookinfovo : " + lookInfoVo.getLookCate());
		//lookInfoVo.setLookCate(lookCate);
		

		List<LookInfoVo> dbLookInfoList = enterService.lookInfoSearch(lookInfoVo);
		
		System.out.println("lookInfovo title : " + lookInfoVo.getLookTitle());

		ModelAndView mv = new ModelAndView();
		mv.setViewName("entertainment/new/enterList");

		mv.addObject("dbLookInfoList", dbLookInfoList);
		mv.addObject("lookCate", lookCate);
		System.out.println("lookcate : " + lookCate);
		
		System.out.println("dbLookInfoList.looktitle : " + dbLookInfoList.size());
		//System.out.println("dbLookInfoList.lookcate : " + dbLookInfoList.get(0).getLookCate());
		System.out.println("�� ����־�?");

		return mv;
	}

	/*
	 * @RequestMapping("new/enterList") public String enterList(){ return
	 * "entertainment/new/enterList"; }
	 */

	// ���Ÿ� ��ȭ��(����)
	@RequestMapping("new/enterDetailConcertView/{contentCode}")
	public ModelAndView enterDetailConcertView(HttpSession session, @PathVariable String contentCode) {
		session.setAttribute("contentCode", contentCode);
		ModelAndView mv = new ModelAndView();

		//�������ڵ忡 ���� ���Ÿ�
		LookInfoVo lookInfoOne = enterService.lookInfoSearchByCode(contentCode);
		
		//�帣�� ���� ���Ÿ�
		String lookGenre = lookInfoOne.getLookGenre();
		LookInfoVo lookInfoGenre = new LookInfoVo();
		lookInfoGenre.setLookGenre(lookGenre);
		
		List<LookInfoVo> lookInfoConList = enterService.lookInfoSearch(lookInfoGenre);
		
		mv.setViewName("entertainment/new/enterDetailConcertView");
		mv.addObject("lookInfoOne", lookInfoOne);
		mv.addObject("lookInfoConList", lookInfoConList);
		
		//System.out.println("lookinfoOnd x : " + lookInfoOne.getX() + " , " + lookInfoOne.getY());

		return mv;
	}
	
	// ���Ÿ� ��ȭ��
	@RequestMapping("new/enterDetailView/{contentCode}")
	public ModelAndView enterDetailView(HttpSession session, @PathVariable String contentCode) {
		//session.setAttribute("contentCode", contentCode);
		ModelAndView mv = new ModelAndView();

		//�������ڵ忡 ���� ���Ÿ�
		LookInfoVo lookInfoOne = enterService.lookInfoSearchByCode(contentCode);
		
		//�帣�� ���� ���Ÿ�
		String lookGenre = lookInfoOne.getLookGenre();
		LookInfoVo lookInfoGenre = new LookInfoVo();
		lookInfoGenre.setLookGenre(lookGenre);
		
		List<LookInfoVo> lookInfoConList = enterService.lookInfoSearch(lookInfoGenre);
		
		mv.setViewName("entertainment/new/enterDetailView");
		mv.addObject("lookInfoOne", lookInfoOne);
		mv.addObject("lookInfoConList", lookInfoConList);
		

		return mv;
	}

	@RequestMapping("detailView")
	public String detailView() {
		return "entertainment/detailView";
	}

	// �Խ��� ����Ʈ
	@RequestMapping("board/userBoardList")
	public ModelAndView userBoardList(HttpServletRequest request) {
		List<LookgoodBoardVo> list = enterService.lookgoodBoardSearchAll();

		ModelAndView mv = new ModelAndView();
		mv.setViewName("entertainment/board/userBoardList");
		mv.addObject("list", list);
		return mv;
	}

	// �Խñ� �󼼺���
	@RequestMapping("board/userBoardDetailView/{lgbNum}")
	public ModelAndView read(HttpServletRequest request, @PathVariable int lgbNum) {

		LookgoodBoardVo boardList = enterService.lookgoodBoardSearchByNum(lgbNum);
		ModelAndView mv = new ModelAndView("entertainment/board/userBoardDetailView", "boardList", boardList);
		return mv;
	}

	// �Խñ� �����ϱ�
	@RequestMapping("board/userBoardDetailView/delete")
	public String delete(HttpServletRequest request, LookgoodBoardVo lookgoodBoardVo) {
		int result = enterService.lookgoodBoardDelete(lookgoodBoardVo);
		return "redirect:/entertainment/board/userBoardList";
	}

	// �Խñ� �ۼ��ϱ�(�ۼ������� �̵�)
	@RequestMapping("board/userBoardWrite")
	public String writeForm(HttpServletRequest request) {
		return "entertainment/board/userBoardWrite";
	}

	// �Խñ� �ۼ��ϱ�
	@RequestMapping("board/userBoardWrite/insert")
	public String write(HttpServletRequest request, LookgoodBoardVo lookgoodBoardVo) {
		enterService.lookgoodBoardInsert(lookgoodBoardVo);
		return "redirect:/entertainment/board/userBoardList";
	}

	// �Խñ� �����ϱ�(���������� �̵�)
	@RequestMapping("board/userBoardUpdate")
	public ModelAndView updateForm(HttpServletRequest request, int lgbNum) {
		LookgoodBoardVo boardUpBefore = enterService.lookgoodBoardSearchByNum(lgbNum);
		return new ModelAndView("entertainment/board/userBoardUpdate", "boardUpBefore", boardUpBefore);
	}

	// �Խñ� �����ϱ�
	@RequestMapping("board/userBoardUpdate/update")
	public ModelAndView update(HttpServletRequest request, LookgoodBoardVo lookgoodBoardVo) {
		enterService.lookgoodBoardUpdate(lookgoodBoardVo);
		LookgoodBoardVo boardUp = enterService.lookgoodBoardSearchByNum(lookgoodBoardVo.getLgbNum());
		return new ModelAndView("entertainment/board/userBoardDetailView", "boardList", boardUp);
	}

	// ���� ���Ÿ� ���� ��������
	@RequestMapping("new/enterMain")
	public ModelAndView enterContents(LookInfoVo lookInfoVo) {
		List<LookInfoVo> lookInfoList = enterService.lookInfoSearch(lookInfoVo);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("entertainment/new/enterMain");
		mv.addObject("lookInfoList", lookInfoList);
		

		System.out.println(lookInfoList.get(0).getContentCode());
		return mv;
	}

	// ��������ϱ�
	// @RequestMapping("")

	// -----------------------------------------------
	/** admin ������ */

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
				lookInfoVo.setLookAge(keyWord);
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
		if (keyField.equals("lookAge"))
			lookInfoVo.setLookAge(keyWord);

		// �� ȭ�鿡 10���� �Խñ��� ����������
		// ������ ��ȣ�� �� 5��, ���ķδ� [����]���� ǥ��
		List<LookInfoVo> list = enterService.enterInfoSearch(lookInfoVo, spage);
		int listCount = 0;
		if (list != null && list.size() != 0) {
			listCount = list.get(0).getCnt();
		}
		// ��ü ������ ��
		int maxPage = (int) (listCount / 10.0 + 0.9);
		// ���� ������ ��ȣ
		int startPage = (int) (spage / 5.0 + 0.8) * 5 - 4;
		// ������ ������ ��ȣ
		int endPage = startPage + 9;
		if (endPage > maxPage)
			endPage = maxPage;

		// 4�� ��������ȣ ����
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
	}
	
	@RequestMapping("enterInfoInsert")
	public String enterInfoInsert(HttpServletRequest request, LookInfoVo lookInfoVo) throws Exception {
		
		String path = request.getSession().getServletContext().getRealPath("/resources/enter");

		MultipartFile file = lookInfoVo.getFile();

		if (file.getSize() > 0) {
			lookInfoVo.setLookImg(file.getOriginalFilename());
		}

		int result = enterService.enterInfoInsert(lookInfoVo);
		if (result == 0) {
			throw new Exception();
		}

		// ���� ����
		File mainFolder = new File(path);
		if (!mainFolder.exists()) {
			mainFolder.mkdir();
		}
		File subFolder = new File(path + "/" + lookInfoVo.getContentCode());
		if (!subFolder.exists()) {
			subFolder.mkdir();
		}
		File photosFolder = new File(path + "/" + lookInfoVo.getContentCode() + "/photos");
		if (!photosFolder.exists()) {
			photosFolder.mkdir();
		}
		// -----���� ���� ��
		if (file.getSize() > 0) {

			try {
				file.transferTo(new File(path + "/" + lookInfoVo.getContentCode() + "/photos/"
						+ lookInfoVo.getLookImg()));

			} catch (Exception e) {
			}
		}
		
		return "admin/enter/enterInfoSearch";
	}
	
	@RequestMapping("enterInfoUpdateForm")
	public ModelAndView enterInfoUpdateForm(HttpServletRequest request, String contentCode) {
		LookInfoVo lookInfoVo = new LookInfoVo();
		
		lookInfoVo.setContentCode(contentCode);

		List<LookInfoVo> list = enterService.enterInfoSearch(lookInfoVo, 0);

		return new ModelAndView("admin/enter/enterInfoUpdateForm", "list", list);
	}
	
	@RequestMapping("enterInfoUpdate")
	public String enterInfoUpdate(HttpServletRequest request, LookInfoVo lookInfoVo) {

		String path = request.getSession().getServletContext().getRealPath("/resources/enter");
		MultipartFile file = lookInfoVo.getFile();

		if (file.getSize() > 0) {
			lookInfoVo.setLookImg(file.getOriginalFilename());
			try {
				file.transferTo(new File(path + "/" + lookInfoVo.getContentCode() + "/photos/"
						+ lookInfoVo.getLookImg()));

			} catch (Exception e) {
			}
		}

		enterService.enterInfoUpdate(lookInfoVo);

		return "admin/enter/enterInfoSearch";
	}
	
	@RequestMapping("enterInfoDelete")
	public ModelAndView enterInfoDelete(String contentCode){
		int result = enterService.enterInfoDelete(contentCode);
		
		String msg = null;
		ModelAndView mv = new ModelAndView();
		
		if(result == 1)
			msg = "�����Ϸ�";
		else
			msg = "��������";
		
		mv.addObject("msg", msg);
		mv.setViewName("admin/enter/enterInfoSearch");
		
		return mv;
	}
}