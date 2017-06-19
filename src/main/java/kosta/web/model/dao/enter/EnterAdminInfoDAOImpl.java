package kosta.web.model.dao.enter;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosta.web.model.vo.enter.LookInfoVo;

@Repository
public class EnterAdminInfoDAOImpl implements EnterAdminInfoDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<LookInfoVo> enterInfoSearch(LookInfoVo lookInfoVo, int currentPage) {
		return sqlSession.selectList("enterAdminMapper.enterInfoSearch", lookInfoVo, new RowBounds(currentPage, 10));
	}

}