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
	public List<UserBlogVo> selectCont(String id, String contentCode) {
		return blogDAO.selectCont(id, contentCode);
	}

	@Override
	public List<UserBlogVo> blogTitle(String id, String category) {
		return blogDAO.blogTitle(id, category);
	}

	@Override
	public int insert(UserBlogVo blogVo) {
		//블로그 번호 넣기
		List<Integer> list = selectBlogNum(blogVo.getId()); 
		int last = 0;
		if(list.size() > 0)
		{
			last = list.get(list.size()-1);
		}
		
		blogVo.setBlogNum(last+1);
		//System.out.println(last); 
		//contentCode를 받아서 category설정하기 
		String ini = blogVo.getContentCode().substring(0,1);
		if(ini.equals("T"))
			blogVo.setCategory("Travelge");
		else if(ini.equals("B"))
			blogVo.setCategory("Entertainment");
		else if(ini.equals("C"))
			blogVo.setCategory("Food");
		
		return blogDAO.insert(blogVo);
	}

	@Override
	public int delete(String id, String contentCode) {
		return blogDAO.delete(id, contentCode);
	}

	@Override
	public List<Integer> selectBlogNum(String id) {
		return blogDAO.selectBlogNum(id);
	}

	@Override
	public int update(UserBlogVo userBlogVo) {
		return blogDAO.update(userBlogVo);
	}
	
	@Override
	public List<UserBlogVo> selectByContentCode(String contentCode)
	{
		System.out.println("userblogservice contentcode : " + contentCode);
		List<UserBlogVo> list = blogDAO.selectByContentCode(contentCode); 
		System.out.println("userblogservice list : " + list);
		for(UserBlogVo dto : list)
		{
			dto.setUserPic(blogDAO.userPicBlog(contentCode, dto.getId()));
			System.out.println("blogservice contentCode : " + list.get(0).getContentCode());
		}
		return list;
	}

}