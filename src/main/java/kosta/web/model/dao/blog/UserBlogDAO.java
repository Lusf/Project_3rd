package kosta.web.model.dao.blog;

import java.util.List;

import kosta.web.model.vo.UserBlogVo;

public interface UserBlogDAO {

	List<UserBlogVo> userBlog(String id);
	
	int insert(UserBlogVo blogVo);
	
	int delete(String id, String contentCode);
}