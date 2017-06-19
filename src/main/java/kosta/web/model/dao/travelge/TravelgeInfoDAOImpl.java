package kosta.web.model.dao.travelge;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosta.web.model.vo.blog.UserBlogVo;
import kosta.web.model.vo.travelge.TravelgeInfoVo;

@Repository
public class TravelgeInfoDAOImpl implements TravelgeInfoDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int travelgeInfoInsert(TravelgeInfoVo travelgeInfoVo) {
		
		return sqlSession.insert("travelgeInfoMapper.travelgeInfoInsert", travelgeInfoVo);
	}

	@Override
	public int travelgeInfoUpdate(TravelgeInfoVo travelgeInfoVo) {
		
		return sqlSession.update("travelgeInfoMapper.travelgeInfoUpdate",travelgeInfoVo);
	}

	@Override
	public int travelgeInfoDelete(String contentCode) {
		
		return sqlSession.delete("travelgeInfoMapper.travelgeInfoDelete", contentCode);
	}

	@Override
	public List<TravelgeInfoVo> travelgeInfoSearch(TravelgeInfoVo travelgeInfoVo, int currentPage) {
			 //travelgeInfoVo.setTravelgeAddr("�߱�");
			 //System.out.println(travelgeInfoVo.getTravelgeName());
			return sqlSession.selectList("travelgeInfoMapper.travelgeInfoSearch", travelgeInfoVo, new RowBounds(currentPage, 10));

	}

	@Override
	public List<TravelgeInfoVo> searchAroundMe() {
		// TODO Auto-generated method stub
		 return sqlSession.selectList("travelgeInfoMapper.travelgeInfoSearch");
	}

	@Override
	public List<TravelgeInfoVo> travelgeSearchScroll(TravelgeInfoVo travelgeInfoVo, int currentPage,
			String keyword) {
		Map<Object, Object> map = new HashMap<>();

		map.put("travelgeTheme", travelgeInfoVo.getTravelgeTheme());
		map.put("travelgeRegion", travelgeInfoVo.getTravelgeRegion());
		map.put("keyword", keyword);	

		return sqlSession.selectList("travelgeInfoMapper.travelgeInfoSearch", travelgeInfoVo, new RowBounds(currentPage, 10));
	}

/*	@Override
	public List<UserBlogVo> latestComment() {
		List<UserBlogVo> list = sqlSession.selectList("mapper.sampleMapper.latestComment");
		
		for(UserBlogVo dto : list)
		{
			for(TravelgeInfoVo li : dto.getCommentList())
			{
				System.out.println(li.getTravelgeName());
			}
		}
		return list;
	}*/
	@Override
	public List<TravelgeInfoVo> latestComment() {
		List<TravelgeInfoVo> list = sqlSession.selectList("travelgeInfoMapper.latestComment");
		
		for(TravelgeInfoVo dto : list)
		{
			for(UserBlogVo li : dto.getUserBlogVo())
			{
				System.out.println(li.getBlogTitle());
			}
		}
		return list;
	}
	

}
