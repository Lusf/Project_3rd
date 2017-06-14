package kosta.web.model.dao.blog;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosta.web.model.vo.blog.UserBlogVo;

@Repository
public class UserBlogDAOImpl implements UserBlogDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<UserBlogVo> userBlog(String id) {
		return sqlSession.selectList("blogMapper.selectBlog", id);
	}
	
	@Override
	public List<String> blogTitle(String id, String category) {
		Map<String, String> map = new HashMap<>();
		
		map.put("id", id);
		map.put("category", category);
		
		return sqlSession.selectList("blogMapper.selectTitle", map);
	}

	@Override
	public int insert(UserBlogVo blogVo) {
		return sqlSession.insert("blogMapper.insertBlog", blogVo);
	}

	@Override
	public int delete(String id, String contentCode) {
		Map<String, String> map = new HashMap<>();
		
		map.put("id", id);
		map.put("contentCode", contentCode);
		
		return sqlSession.delete("blogMapper.deleteBlog", map);
	}
}