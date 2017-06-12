package kosta.web.controller.user;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import kosta.web.model.service.user.UserService;
import kosta.web.model.vo.UserVo;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping({ "joinForm" })
	public String joinForm() {
		return "user/joinForm";
	}

	@RequestMapping({ "login" })
	public String login() {
		return "user/login";
	}

	@RequestMapping("join")
	public String userJoin(HttpServletRequest request, UserVo userVo) throws Exception {

		String path = request.getSession().getServletContext().getRealPath("/resources/user");

//		System.out.println(path);
		MultipartFile file = userVo.getFile();

		if (file.getSize() > 0) {
			userVo.setUserPic(file.getOriginalFilename());
		}

		int result = userService.userJoin(userVo);
		if (result == 0) {
			throw new Exception();
		}

//		弃歹 积己
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
//		-----弃歹 积己 场
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

	@RequestMapping("blog/{id}")
	public String userBlog(@PathVariable String id) {

		return "user/blog";
	}
}
