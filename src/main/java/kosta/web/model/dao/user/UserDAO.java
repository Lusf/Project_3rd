package kosta.web.model.dao.user;

import java.util.List;

import kosta.web.model.vo.UserBlogVo;
import kosta.web.model.vo.UserVo;

public interface UserDAO {

	
	int userJoin(UserVo userVo);
	
	UserVo userSearchById(String id);
	
	List<UserBlogVo> userBlog(String id);
}
