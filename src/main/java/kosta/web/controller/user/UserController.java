package kosta.web.controller.user;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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


	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public ModelAndView loginForm(HttpServletRequest request){
		
		String referrer = request.getHeader("Referer");
		request.getSession().setAttribute("loginRedirect", referrer);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/loginForm");
		mv.addObject("flag", 1);
		return mv;
	}	
	
	@RequestMapping("join")
	public String userJoin(HttpServletRequest request, UserVo userVo) throws Exception {

		String path = request.getSession().getServletContext().getRealPath("/resources/user");

		MultipartFile file = userVo.getFile();

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


	@RequestMapping("userSearchById")
	@ResponseBody
	public int userSearchById(String id) {
		
		int result = 0;
			
		if(userService.userSearchById(id) == null){
			result = 1;
		}
		
		return result;
	}
	
	//마이페이지
	@RequestMapping("mypage")
	public ModelAndView mypage(HttpServletRequest req){
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		UserVo uservo = (UserVo)authentication.getPrincipal();
		
		return new ModelAndView("mypage/mypage", "userInfo", uservo);
	}
}
