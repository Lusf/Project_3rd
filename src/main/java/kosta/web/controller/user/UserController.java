package kosta.web.controller.user;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kosta.web.model.service.user.UserService;
import kosta.web.model.vo.UserVo;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping({ "joinForm" })
	public ModelAndView joinForm() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/loginForm");
		mv.addObject("flag", 0);
		return mv;
	}

	@RequestMapping("loginForm")
	public ModelAndView loginForm(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/loginForm");
		mv.addObject("flag", 1);
		return mv;
	}	
	
/*	@RequestMapping({"login","{folder}/login"})
	public String login(){

		return "redirect:/";
	}*/

	@RequestMapping("join")
	public String userJoin(HttpServletRequest request, UserVo userVo) throws Exception {

//		String path = request.getSession().getServletContext().getContextPath()+"/resources/data";
		String path = request.getSession().getServletContext().getRealPath("/resources/user");

		
//		System.out.println(path);
		MultipartFile file = userVo.getFile();
		
//		System.out.println(file.getOriginalFilename());

		if (file.getSize() > 0) {
			userVo.setUserPic(file.getOriginalFilename());
		}

		int result = userService.userJoin(userVo);
		if (result == 0) {
			throw new Exception();
		}

//		폴더 생성
		File mainFolder = new File(path);
		if (!mainFolder.exists()) {
			mainFolder.mkdir();
		}
		File idFolder = new File(path + "/" + userVo.getId());
		if (!idFolder.exists()) {
			idFolder.mkdir();
		}
		File profileFolder = new File(path + "/" + userVo.getId()+"/profile");
		if (!profileFolder.exists()) {
			profileFolder.mkdir();
		}		
//		-----폴더 생성 끝
		if (file.getSize() > 0) {

			try {
				file.transferTo(new File(path + "/" +userVo.getId()+"/profile/"+ userVo.getUserPic()));
			} catch (Exception e) {
			}
		}

		return "redirect:/";
	}

	public String userLogout() {
		return null;
	}

	@RequestMapping("userSearchById")
	public String userSearchById(String id) {
		return null;
	}
	
	//마이페이지
	@RequestMapping("mypage")
	public ModelAndView mypage(HttpServletRequest req){
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		UserVo uservo = (UserVo)authentication.getPrincipal();
		
		return new ModelAndView("mypage/mypage", "userInfo", uservo);
	}
}
