package kosta.web.model.service.blog;

import java.util.List;

import kosta.web.model.vo.blog.UserBlogVo;

public interface UserBlogService {

	List<UserBlogVo> selectCont(String id, String contentCode);
	
	List<UserBlogVo> blogTitle(String id, String category);

	int insert(UserBlogVo blogVo);
	
	int delete(String id, String contentCode);
	
	int update(UserBlogVo userBlogVo);
	
	List<Integer> selectBlogNum(String id);

	List<UserBlogVo> selectByContentCode(String contentCode);

}