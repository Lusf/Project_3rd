package kosta.web.controller.user;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import kosta.web.model.service.user.UserService;
import kosta.web.model.vo.UserVo;

@Controller
@RequestMapping("user")
public class UserController {
	
	
	private final String path = "C:\\Edu\\3rd_project_picture";
	@Autowired
	private UserService userService;
	
	@RequestMapping({"joinForm","{folder}/joinForm"})
	public String joinForm(){
		return "user/joinForm";
	}
	
	@RequestMapping({"login","{folder}/login"})
	public String login(){
		return "user/login";
	}	
	
	@RequestMapping("join")
	public String userJoin() throws Exception{
		/*
		MultipartFile file = userVo.getFile();
		
		System.out.println(file.getOriginalFilename());
		System.out.println("아이디 : " + userVo.getId());
		System.out.println("비밀번호 : " + userVo.getPassword());*/
//		int result = userService.userJoin(userVo);
//		if(result == 0)
//		{
//			throw new Exception();
//		}
//		if(file.getSize()>0)
//		{
//			File folder = new File(path);
//			if(!folder.exists())
//			{
//				folder.mkdir();
//			}
//			try {
//				file.transferTo(new File(path+"/"+file.getOriginalFilename()));
//			} catch (Exception e) {	
//			}	
//			
//			
//		}
		
	
		return "index";
	}
	
	public String userLogout(){
		return null;
	}
	@RequestMapping("userSearchById")
	public String userSearchById(String id){
		return null;
	}

}
