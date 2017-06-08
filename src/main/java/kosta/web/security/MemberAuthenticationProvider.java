/*package kosta.web.security;

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

import kosta.mvc.model.dao.AuthoritiesDao;
import kosta.mvc.model.dao.MemberDao;
import kosta.mvc.model.vo.Authority;
import kosta.mvc.model.vo.Member;

@Service
public class MemberAuthenticationProvider implements AuthenticationProvider {
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private AuthoritiesDao authoritiesDao;
	
	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public Authentication authenticate(Authentication auth) throws AuthenticationException {
		
		if(!supports(auth.getClass())){	//인증 전에 지원 여부로 걸러내기
			return null;
		}
		
		//1. 인수로 받은 user정보를 가지고 db에 존재하는지 체크
		String id = auth.getName();
		Member member = memberDao.selectMemberById(id);
		
		if(member==null){
			throw new UsernameNotFoundException(id+"는 없는 회원입니다.");
		}
		 
		//2. 존재하면 비밀번호 비교
		String password = (String)auth.getCredentials();
		
		if(!passwordEncoder.matches(password, member.getPassword())){
			//password와 member.getPassword()를 자동으로 비교해주는 메소드
			throw new BadCredentialsException("패스워드 오류입니다.");
		}
		
		//------------------- 인증에 성공한 이후... --------------------------
		
		//3. 모두가 일치하면 Authentication을 만들어서 리턴..
		List<Authority> list = authoritiesDao.selectAuthorityByUserName(id);
		
		if(list.isEmpty()){	//아무 권한이 없는 경우..
			throw new UsernameNotFoundException(id+"는 아무 권한이 없습니다.");
		}
		
		//db에서 가지고 온 권한을 GrantedAuthority로 변환해야 함(하나당 권한 1개밖에 안됨..)
		List<SimpleGrantedAuthority> authList = new ArrayList<>();
		
		for(Authority au : list){
			authList.add(new SimpleGrantedAuthority(au.getRole()));
		}
		
		return new UsernamePasswordAuthenticationToken(member, null, authList);
	}

	*//** 해당 타입의 Authentication객체를 이용해서
	 *  인증 처리를 할 수 있는지 여부를 리턴해주는 메소드 *//*
	@Override
	public boolean supports(Class<?> authen) {		
		return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authen);
	}

}
*/