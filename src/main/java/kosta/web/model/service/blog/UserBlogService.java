package kosta.web.model.service.blog;

import java.util.List;

import kosta.web.model.vo.UserBlogVo;

public interface UserBlogService {

	List<UserBlogVo> userBlog(String id);
}