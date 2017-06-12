package kosta.web.model.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kosta.web.model.dao.authorities.AuthoritiesDao;
import kosta.web.model.dao.user.UserDAO;

import kosta.web.model.vo.Authorities;
import kosta.web.model.vo.UserVo;
import kosta.web.security.Constants;
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private AuthoritiesDao authoritiesDao;
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	@Transactional
	public int userJoin(UserVo userVO) {

		int result = 0;
		String password = passwordEncoder.encode(userVO.getPassword());
		userVO.setPassword(password);
		
		userVO.setPoint(0);
		result = userDAO.userJoin(userVO);
		if(result == 1)
		{
			authoritiesDao.inserAuthority(new Authorities(userVO.getId(), Constants.ROLE_MEMBER));
		}		
		return result;
	}

	@Override
	public int userLogout() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserVo userSearchById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

}
