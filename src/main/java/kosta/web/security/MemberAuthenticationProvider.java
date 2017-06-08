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
		
		if(!supports(auth.getClass())){	//���� ���� ���� ���η� �ɷ�����
			return null;
		}
		
		//1. �μ��� ���� user������ ������ db�� �����ϴ��� üũ
		String id = auth.getName();
		Member member = memberDao.selectMemberById(id);
		
		if(member==null){
			throw new UsernameNotFoundException(id+"�� ���� ȸ���Դϴ�.");
		}
		 
		//2. �����ϸ� ��й�ȣ ��
		String password = (String)auth.getCredentials();
		
		if(!passwordEncoder.matches(password, member.getPassword())){
			//password�� member.getPassword()�� �ڵ����� �����ִ� �޼ҵ�
			throw new BadCredentialsException("�н����� �����Դϴ�.");
		}
		
		//------------------- ������ ������ ����... --------------------------
		
		//3. ��ΰ� ��ġ�ϸ� Authentication�� ���� ����..
		List<Authority> list = authoritiesDao.selectAuthorityByUserName(id);
		
		if(list.isEmpty()){	//�ƹ� ������ ���� ���..
			throw new UsernameNotFoundException(id+"�� �ƹ� ������ �����ϴ�.");
		}
		
		//db���� ������ �� ������ GrantedAuthority�� ��ȯ�ؾ� ��(�ϳ��� ���� 1���ۿ� �ȵ�..)
		List<SimpleGrantedAuthority> authList = new ArrayList<>();
		
		for(Authority au : list){
			authList.add(new SimpleGrantedAuthority(au.getRole()));
		}
		
		return new UsernamePasswordAuthenticationToken(member, null, authList);
	}

	*//** �ش� Ÿ���� Authentication��ü�� �̿��ؼ�
	 *  ���� ó���� �� �� �ִ��� ���θ� �������ִ� �޼ҵ� *//*
	@Override
	public boolean supports(Class<?> authen) {		
		return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authen);
	}

}
*/