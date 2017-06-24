package kosta.web.model.dao.enter;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		
		return sqlSession.selectList("lookInfoMapper.searchList", lookInfoVo);
	}

	@Override
	public LookInfoVo lookInfoSearchByCode(String contentCode) {
		
		return sqlSession.selectOne("lookInfoMapper.searchByCode", contentCode);
	}
	
	@Override
	public List<LookInfoVo> lookInfoSearchByCate(String lookCate) {
	
		return sqlSession.selectList("lookInfoMapper.searchByCate", lookCate);
	}

	@Override
	public List<LookInfoVo> lookInfoSearchByGenre(String lookGenre) {
		
		return sqlSession.selectList("lookInfoMapper.searchByGenre", lookGenre);
	}
	
	@Override
	public List<LookInfoVo> lookInfoSearchByNewList() {

		return sqlSession.selectList("lookInfoMapper.searchByNewList");
	}

	@Override
	public List<LookInfoVo> enterSearch(LookInfoVo lookInfoVo,String searchYear, String searchMonth, String sort) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("info", lookInfoVo);
		map.put("searchYear", searchYear);
		map.put("searchMonth", searchMonth);
		map.put("sort", sort);
		
		return sqlSession.selectList("lookInfoSearchMapper.enterSearchSelect", map);
	}
	
	

}
