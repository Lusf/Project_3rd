package kosta.web.model.dao.user;

import kosta.web.model.vo.UserVo;

public interface UserDAO {

	
	int userJoin(UserVo userVo);
	
	UserVo userSearchById(String id);
}
