package kosta.web.security;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import kosta.web.model.dao.authorities.AuthoritiesDao;
import kosta.web.model.dao.user.UserDAO;
import kosta.web.model.vo.Authorities;
import kosta.web.model.vo.UserVo;

@Service("userAuthenticationProvider")
public class UserAuthenticationProvider implements AuthenticationProvider {

	@Autowired
	private UserDAO userDAO;

	@Autowired
	private AuthoritiesDao authoritiesDao;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public Authentication authenticate(Authentication auth) throws AuthenticationException {

		if(!supports(auth.getClass())){
			return null;
		}
		
		//1. 인수로 받는 user정보를 가지고 DB에 존재하는지 체크
		String id = auth.getName(); //아이디
		UserVo userVo = userDAO.userSearchById(id);

		if (userVo == null) {
			throw new UsernameNotFoundException(id + "는 없는 회원입니다.");
		}

		// 2. 존재하면 비밀번호 비교
		String password = (String) auth.getCredentials();

		if (!passwordEncoder.matches(password, userVo.getPassword())) {
			// password와 member.getPassword()를 자동으로 비교해주는 메소드
			throw new BadCredentialsException("패스워드 오류입니다.");
		}

		// ------------------- 인증에 성공한 이후... --------------------------

		// 3. 모두가 일치하면 Authentication을 만들어서 리턴..
		List<Authorities> list = authoritiesDao.selectAuthoritiesByUsername(id);

		if (list.isEmpty()) { // 아무 권한이 없는 경우..
			throw new UsernameNotFoundException(id + "는 아무 권한이 없습니다.");
		}
				
		// db에서 가지고 온 권한을 GrantedAuthority로 변환해야 함(하나당 권한 1개밖에 안됨..)
		List<SimpleGrantedAuthority> authList = new ArrayList<>();

		for (Authorities au : list) {
			authList.add(new SimpleGrantedAuthority(au.getRole()));
		}
		
		
		return new UsernamePasswordAuthenticationToken(userVo, null, authList);
	}
	/**
	 * 해당 타입의 Authentication객체를 이용해서 인증 처리를
	 * 할 수 있는지 여부를 리턴해주는 메소드
	 */
	@Override
	public boolean supports(Class<?> authentication) {
		
		//들어오는 객체로부터 인증 처리가 가능한지 true와 false를 return.
		return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication);
	}

}
