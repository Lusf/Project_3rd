package kosta.web.model.dao.user;

import kosta.web.model.vo.UserBlogVo;
import kosta.web.model.vo.UserVo;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosta.web.model.dao.user.UserDAO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int userJoin(UserVo userVo) {

		return sqlSession.insert("userMapper.userJoin",userVo);
	}

	@Override
	public UserVo userSearchById(String id) {
		
		return null;
	}

	@Override
	public List<UserBlogVo> userBlog(String id) {
		// TODO Auto-generated method stub
		
		return null;
	}

}
