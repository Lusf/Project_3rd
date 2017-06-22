package kosta.web.model.dao.enter;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosta.web.model.vo.enter.LookInfoVo;

@Repository
public class LookInfoDAOImpl implements LookInfoDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int lookInfoInsert(LookInfoVo lookInfoVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int lookInfoUpdate(LookInfoVo lookInfoVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int lookInfoDelete(String contentCode) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<LookInfoVo> lookInfoSearch(LookInfoVo lookInfoVo) {
		System.out.println("³­ dao¾ß");
		return sqlSession.selectList("lookInfoMapper.searchList", lookInfoVo);
	}

	@Override
	public LookInfoVo lookInfoSearchByCode(String contentCode) {
		
		return sqlSession.selectOne("lookInfoMapper.searchByCode", contentCode);
	}
	

	
	

}
