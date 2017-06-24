package kosta.web.controller.enter;

import java.io.File;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import kosta.web.model.service.enter.EnterService;
import kosta.web.model.vo.AvgScoreVo;
import kosta.web.model.vo.UserVo;
import kosta.web.model.vo.blog.UserBlogVo;
import kosta.web.model.vo.enter.LookInfoVo;
import kosta.web.model.vo.enter.LookgoodBoardVo;
import kosta.web.model.vo.travelge.TravelgeInfoVo;

@Controller
@RequestMapping("entertainment/")
public class EnterController {
	
	@Autowired
	private EnterService enterService;
	
	@Autowired
	private UserBlogService userBlogService;

	/*
	 * //���Ÿ� ����
	 * 
	 * @RequestMapping("new/enterMain") public String enterMain(){ return
	 * "entertainment/new/enterMain"; }
	 */

	// ���Ÿ� ����Ʈ (ī�װ��� ����)
	@RequestMapping("new/enterList/{lookCate}")
	public ModelAndView enterList(@PathVariable String lookCate, String keyField, String keyWord, String currentPage) {	
		
		if(lookCate.equals("movie")){
			lookCate="��ȭ";			
		}else if(lookCate.equals("concert")){
			lookCate="����/����";
		}else if(lookCate.equals("TV")){
			lookCate="TV";
		}
		
		List<LookInfoVo> dbLookInfoList = enterService.lookInfoSearchByCate(lookCate);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("entertainment/new/enterList");

		mv.addObject("dbLookInfoList", dbLookInfoList);
		mv.addObject("lookCate", lookCate);

		return mv;
	}


	// ���Ÿ� ��ȭ��(����)
	@RequestMapping("new/enterDetailConcertView/{contentCode}")
	public ModelAndView enterDetailConcertView(@PathVariable String contentCode, Principal principal) {
		//session.setAttribute("contentCode", contentCode);
		ModelAndView mv = new ModelAndView();
		String id="";	
		
		//�������ڵ忡 ���� ���Ÿ�
		LookInfoVo lookInfoOne = enterService.lookInfoSearchByCode(contentCode);
		
		//�̹��� ';'�� �����ڷ� �ڸ���
		String allImg = lookInfoOne.getLookImg();
		
		String cutImgClone[] = allImg.split(":");
		
		String cutImgSemiClone[] = cutImgClone[1].split(";");
		String posterImg = cutImgClone[0];
		
		
		//�帣�� ���� ���Ÿ�
		List<LookInfoVo> lookInfoConList = enterService.lookInfoSearchByGenre(lookInfoOne.getLookGenre());		
		
		//��α�		
/*		if (principal != null) {
			UserVo user = (UserVo) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			id = user.getId();			
			System.out.println("id : " + id);			
		}*/
		
		List<UserBlogVo> commentList = userBlogService.selectByContentCode(contentCode);
		
		
		mv.setViewName("entertainment/new/enterDetailConcertView");
		mv.addObject("info", lookInfoOne);
		
		mv.addObject("lookInfoConList", lookInfoConList);
		mv.addObject("commentList", commentList);
		

		mv.addObject("cutImgSemiClone", cutImgSemiClone);
		mv.addObject("posterImg", posterImg);
	


		mv.addObject("imgs", cutImgSemiClone);
		

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
		
		//��α�
		List<UserBlogVo> commentList = userBlogService.selectByContentCode(contentCode);
		
		mv.setViewName("entertainment/new/enterDetailView");
		mv.addObject("info", lookInfoOne);
		mv.addObject("lookInfoConList", lookInfoConList);
		mv.addObject("commentList", commentList);
		
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
	@RequestMapping(value = "board/userBoardWrite/insert", method = RequestMethod.POST)
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
		
		//���Ÿ� ���� ��������(��ü)
		List<LookInfoVo> lookInfoList = enterService.lookInfoSearch(lookInfoVo);

		//���Ÿ� ���� �ֽż����� ��������
		List<LookInfoVo> lookInfoNewList = enterService.lookInfoSearchByNewList();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("entertainment/new/enterMain");
		mv.addObject("lookInfoList", lookInfoList);
		mv.addObject("lookInfoNewList", lookInfoNewList);
	
		for(int i=0; i<lookInfoNewList.size(); i++){

		}
		return mv;
	}

	// ��������ϱ�
	// @RequestMapping("")
	
	
	/** ���Ÿ� �˻��ϱ� */
	@RequestMapping("enterSearchPage")
	public ModelAndView enterSearch(LookInfoVo lookInfoVo){
		List<LookInfoVo> list = enterService.enterSearch(lookInfoVo, null, null);
		List<LookInfoVo> imgList = new ArrayList<>();
		
		ModelAndView mv = new ModelAndView();
		
		if(list != null){
			for(LookInfoVo ivo : list){
				String img[] = ivo.getLookImg().split(":");
				ivo.setLookImg(img[0]);
				
				if(ivo.getLookStartDate()!=null){
					String y = ivo.getLookStartDate().substring(0,4);
					String m = ivo.getLookStartDate().substring(5,7);
					String d = ivo.getLookStartDate().substring(8,10);
					ivo.setLookStartDate(y+"/"+m+"/"+d);
				}
				
				if(ivo.getLookLastDate()!=null){
					String y = ivo.getLookLastDate().substring(0,4);
					String m = ivo.getLookLastDate().substring(5,7);
					String d = ivo.getLookLastDate().substring(8,10);
					ivo.setLookLastDate(y+"/"+m+"/"+d);
				}
				else
					ivo.setLookLastDate("����");
				
				imgList.add(ivo);
			}
		}

		mv.addObject("list", imgList);
		mv.setViewName("entertainment/new/enterSearch");
		
		return mv;
	}
	
	@RequestMapping("/entSearch")
	@ResponseBody
	public List<LookInfoVo> entSearch(LookInfoVo lookInfoVo, String searchYear, String searchMonth){
		if(searchYear.equals(""))
			searchYear = null;
		if(searchMonth.equals(""))
			searchMonth = null;
	
		List<LookInfoVo> list = enterService.enterSearch(lookInfoVo, searchYear, searchMonth);
		List<LookInfoVo> imgList = new ArrayList<>();

		if(list != null){
			for(LookInfoVo ivo : list){
				String img[] = ivo.getLookImg().split(":");
				ivo.setLookImg(img[0]);
				
				if(ivo.getLookStartDate()!=null){
					String y = ivo.getLookStartDate().substring(0,4);
					String m = ivo.getLookStartDate().substring(5,7);
					String d = ivo.getLookStartDate().substring(8,10);
					ivo.setLookStartDate(y+"/"+m+"/"+d);
				}
				
				if(ivo.getLookLastDate()!=null){
					String y = ivo.getLookLastDate().substring(0,4);
					String m = ivo.getLookLastDate().substring(5,7);
					String d = ivo.getLookLastDate().substring(8,10);
					ivo.setLookLastDate(y+"/"+m+"/"+d);
				}
				else
					ivo.setLookLastDate("����");
				
				imgList.add(ivo);
			}
		}
		return imgList;
	}
	
	
	
	
	
	
	
	
	

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
		String poster = null;
		String pic[] = new String[4];
		
		MultipartFile file = lookInfoVo.getFile();
		if (file.getSize() > 0) {
			poster = file.getOriginalFilename();
		}
		
		MultipartFile pic1 = lookInfoVo.getPic1();
		if (pic1.getSize() > 0) {
			pic[0] = pic1.getOriginalFilename();
		}
		MultipartFile pic2 = lookInfoVo.getPic2();
		if (pic2.getSize() > 0) {
			pic[1] = pic2.getOriginalFilename();
		}
		MultipartFile pic3 = lookInfoVo.getPic3();
		if (pic3.getSize() > 0) {
			pic[2] = pic3.getOriginalFilename();
		}
		MultipartFile pic4 = lookInfoVo.getPic4();
		if (pic4.getSize() > 0) {
			pic[3] = pic4.getOriginalFilename();
		}
		
		lookInfoVo.setLookImg(poster+":"+pic[0]+";"+pic[1]+";"+pic[2]+";"+pic[3]);
		
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
		if(file.getSize() > 0) 
			file.transferTo(new File(path + "/" + lookInfoVo.getContentCode() + "/photos/" + poster));
		if(pic1.getSize() > 0)
			pic1.transferTo(new File(path + "/" + lookInfoVo.getContentCode() + "/photos/" + pic[0]));
		if(pic2.getSize() > 0)
			pic2.transferTo(new File(path + "/" + lookInfoVo.getContentCode() + "/photos/" + pic[1]));
		if(pic3.getSize() > 0)
			pic3.transferTo(new File(path + "/" + lookInfoVo.getContentCode() + "/photos/" + pic[2]));
		if(pic4.getSize() > 0)
			pic4.transferTo(new File(path + "/" + lookInfoVo.getContentCode() + "/photos/" + pic[3]));
		
		return "admin/enter/enterInfoSearch";
	}
	
	@RequestMapping("enterInfoUpdateForm")
	public ModelAndView enterInfoUpdateForm(HttpServletRequest request, String contentCode) {
		LookInfoVo lookInfoVo = new LookInfoVo();
		
		lookInfoVo.setContentCode(contentCode);

		List<LookInfoVo> list = enterService.enterInfoSearch(lookInfoVo, 0);
		LookInfoVo infoVo = list.get(0);
		
		String img = infoVo.getLookImg();
		String poster[] = img.split(":");
		String cut[] = poster[1].split(";");
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("img", img);
		mv.addObject("infoVo", infoVo);
		mv.addObject("poster", poster[0]);
		
		for(int i=0; i<cut.length; i++){
			if(cut[i].equals("null"))
				cut[i] = "��������";
		}
		
		mv.addObject("pic1", cut[0]);
		mv.addObject("pic2", cut[1]);
		mv.addObject("pic3", cut[2]);
		mv.addObject("pic4", cut[3]);
		
		mv.setViewName("admin/enter/enterInfoUpdateForm");
		
		return mv;
	}
	
	@RequestMapping("enterInfoUpdate")
	public String enterInfoUpdate(HttpServletRequest request, LookInfoVo lookInfoVo) throws Exception {
		String path = request.getSession().getServletContext().getRealPath("/resources/enter");
		String poster = null;
		String pic[] = new String[4];
		
		String img = lookInfoVo.getLookImg();
		String pos[] = img.split(":");
		String cut[] = pos[1].split(";");
		
		MultipartFile file = lookInfoVo.getFile();
		if(file.getSize() > 0)
			poster = file.getOriginalFilename();
		else
			poster = pos[0];
		
		MultipartFile pic1 = lookInfoVo.getPic1();
		if(pic1.getSize() > 0)
			pic[0] = pic1.getOriginalFilename();
		else
			pic[0] = cut[0];
		MultipartFile pic2 = lookInfoVo.getPic2();
		if(pic2.getSize() > 0)
			pic[1] = pic2.getOriginalFilename();
		else
			pic[1] = cut[1];
		MultipartFile pic3 = lookInfoVo.getPic3();
		if(pic3.getSize() > 0)
			pic[2] = pic3.getOriginalFilename();
		else
			pic[2] = cut[2];
		MultipartFile pic4 = lookInfoVo.getPic4();
		if(pic4.getSize() > 0)
			pic[3] = pic4.getOriginalFilename();
		else
			pic[3] = cut[3];
		
		for(int i=0; i<pic.length; i++){
			if(pic[i].equals("��������"))
				pic[i] = "null";
		}
		
		lookInfoVo.setLookImg(poster+":"+pic[0]+";"+pic[1]+";"+pic[2]+";"+pic[3]);

		int result = enterService.enterInfoUpdate(lookInfoVo);
		if (result == 0) {
			throw new Exception();
		}

		if(file.getSize() > 0) 
			file.transferTo(new File(path + "/" + lookInfoVo.getContentCode() + "/photos/" + poster));
		if(pic1.getSize() > 0)
			pic1.transferTo(new File(path + "/" + lookInfoVo.getContentCode() + "/photos/" + pic[0]));
		if(pic2.getSize() > 0)
			pic2.transferTo(new File(path + "/" + lookInfoVo.getContentCode() + "/photos/" + pic[1]));
		if(pic3.getSize() > 0)
			pic3.transferTo(new File(path + "/" + lookInfoVo.getContentCode() + "/photos/" + pic[2]));
		if(pic4.getSize() > 0)
			pic4.transferTo(new File(path + "/" + lookInfoVo.getContentCode() + "/photos/" + pic[3]));

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