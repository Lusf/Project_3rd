package kosta.web.model.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosta.web.model.dao.user.UserDAO;
import kosta.web.model.vo.UserBlogVo;
import kosta.web.model.vo.UserVo;
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	
	
	@Override
	public int userJoin(UserVo userVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int userLogout() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserVo userSearchById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserBlogVo> userBlog(String id) {
		// TODO Auto-generated method stub
		return null;
	}

}
