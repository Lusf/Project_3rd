package kosta.web.model.dao.authorities;

import java.util.List;

import kosta.web.model.vo.Authorities;

public interface AuthoritiesDao {
	
	public List<Authorities> selectAuthoritiesByUsername(String username);

	
	public int inserAuthority(Authorities authorities);
}
