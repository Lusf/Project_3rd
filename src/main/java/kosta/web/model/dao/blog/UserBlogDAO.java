package kosta.web.model.dao.blog;

import java.util.List;

import kosta.web.model.vo.blog.UserBlogVo;

public interface UserBlogDAO {

	List<UserBlogVo> userBlog(String id);
	
	List<String> blogTitle(String id, String category);
	
	int insert(UserBlogVo blogVo);
	
	int delete(String id, String contentCode);
}