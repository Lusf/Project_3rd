package kosta.web.model.service.user;

import kosta.web.model.vo.UserVo;

public interface UserService {

	int userJoin(UserVo userVo);

	int userLogout();

	UserVo userSearchById(String id);

}
