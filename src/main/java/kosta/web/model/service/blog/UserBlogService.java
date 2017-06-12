package kosta.web.model.service.blog;

import java.util.List;

import kosta.web.model.vo.UserBlogVo;

public interface UserBlogService {

	List<UserBlogVo> userBlog(String id);

	int insert(UserBlogVo blogVo);
	
	int delete(String id, String contentCode);
}