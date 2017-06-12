package kosta.web.model.dao.authorities;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosta.web.model.vo.Authorities;


@Repository
public class AuthoritiesDaoImpl implements AuthoritiesDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Authorities> selectAuthoritiesByUsername(String username) {
		
		return sqlSession.selectList("authoritiesMapper.selectAuthorityByUserName", username);
	}

	@Override
	public int inserAuthority(Authorities authorities) {
		return sqlSession.insert("authoritiesMapper.insertAuthority",authorities);
	}

}
