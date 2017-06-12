package kosta.web.model.dao.blog;

import java.util.List;

import kosta.web.model.vo.UserBlogVo;

public interface UserBlogDAO {

	List<UserBlogVo> userBlog(String id);
}