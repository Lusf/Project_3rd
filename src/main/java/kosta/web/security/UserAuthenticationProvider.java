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

		if (!supports(auth.getClass())) { // ���� ���� ���� ���η� �ɷ�����
			return null;
		}

		// 1. �μ��� ���� user������ ������ db�� �����ϴ��� üũ
		String id = auth.getName();
		UserVo userVo = userDAO.userSearchById(id);

		if (userVo == null) {
			throw new UsernameNotFoundException(id + "�� ���� ȸ���Դϴ�.");
		}

		// 2. �����ϸ� ��й�ȣ ��
		String password = (String) auth.getCredentials();

		if (!passwordEncoder.matches(password, userVo.getPassword())) {
			// password�� member.getPassword()�� �ڵ����� �����ִ� �޼ҵ�
			throw new BadCredentialsException("�н����� �����Դϴ�.");
		}

		// ------------------- ������ ������ ����... --------------------------

		// 3. ��ΰ� ��ġ�ϸ� Authentication�� ���� ����..
		List<Authorities> list = authoritiesDao.selectAuthoritiesByUsername(id);

		if (list.isEmpty()) { // �ƹ� ������ ���� ���..
			throw new UsernameNotFoundException(id + "�� �ƹ� ������ �����ϴ�.");
		}

		// db���� ������ �� ������ GrantedAuthority�� ��ȯ�ؾ� ��(�ϳ��� ���� 1���ۿ� �ȵ�..)
		List<SimpleGrantedAuthority> authList = new ArrayList<>();

		for (Authorities au : list) {
			authList.add(new SimpleGrantedAuthority(au.getRole()));
		}

		return new UsernamePasswordAuthenticationToken(userVo, null, authList);
	}

	@Override
	public boolean supports(Class<?> authen) {
		return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authen);
	}

}