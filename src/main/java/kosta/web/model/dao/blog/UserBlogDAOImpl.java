package kosta.web.model.dao.blog;

import java.util.ArrayList;
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
	public List<UserBlogVo> selectCont(String id, String contentCode) {
		Map<String, String> map = new HashMap<>();
		
		map.put("id", id);
		map.put("contentCode", contentCode);
		
		return sqlSession.selectList("blogMapper.selectCont", map);
	}
	
	@Override
	public List<UserBlogVo> blogTitle(String id, String category) {
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

	@Override
	public List<UserBlogVo> selectByContentCode(String contentCode)
	{System.out.println("selectbycontentcode dao contentcode : " + contentCode);
		return sqlSession.selectList("blogMapper.selectByContentCode", contentCode);
	}
	@Override
	public List<Integer> selectBlogNum(String id) {
		return sqlSession.selectList("blogMapper.selectBlogNum", id);
	}

	@Override
	public int update(UserBlogVo userBlogVo) {
		return sqlSession.update("blogMapper.updateBlog", userBlogVo);
	}

	@Override
	public String userPicBlog(String contentCode, String id) {
		// TODO Auto-generated method stub
		Map<Object, Object> map = new HashMap<>();
		map.put("contentCode", contentCode);
		map.put("id", id);
		String userPic = sqlSession.selectOne("blogMapper.userPicBlog", map);
		return userPic;
	}
}