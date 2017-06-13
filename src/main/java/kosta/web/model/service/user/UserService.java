package kosta.web.model.service.user;

import java.util.List;

import kosta.web.model.vo.UserBlogVo;
import kosta.web.model.vo.UserVo;

public interface UserService {

	int userJoin(UserVo userVo);

	int userLogout();

	UserVo userSearchById(String id);

	UserVo userInfo(String id);
}
