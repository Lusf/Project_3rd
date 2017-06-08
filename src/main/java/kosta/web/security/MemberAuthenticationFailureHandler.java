package kosta.web.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;


/** 스프링 시큐리티에서 로그인 실패 시 호출되는 event handler
 *  
 *  springBean 설정 문서에서 <security:form-login태그에
 *  authentication-failure-handler-ref 추가하면
 *  로그인 실패시 onAuthenticationFailure 메소드가 차동 호출된다. */

@Component
public class MemberAuthenticationFailureHandler implements AuthenticationFailureHandler {

	@Override
	public void onAuthenticationFailure(HttpServletRequest req, HttpServletResponse resp, AuthenticationException auth)
			throws IOException, ServletException {
		req.setAttribute("errorMessage", auth.getMessage());
		req.getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(req, resp);
	}
}