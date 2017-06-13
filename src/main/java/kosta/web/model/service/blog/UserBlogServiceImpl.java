package kosta.web.model.service.blog;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosta.web.model.dao.blog.UserBlogDAO;
import kosta.web.model.vo.blog.UserBlogVo;

@Service
public class UserBlogServiceImpl implements UserBlogService {
	
	@Autowired
	private UserBlogDAO blogDAO;

	@Override
	public List<UserBlogVo> userBlog(String id) {
		return blogDAO.userBlog(id);
	}

	@Override
	public int insert(UserBlogVo blogVo) {
		return blogDAO.insert(blogVo);
	}

	@Override
	public int delete(String id, String contentCode) {
		return blogDAO.delete(id, contentCode);
	}
}