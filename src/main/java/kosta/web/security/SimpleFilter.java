package kosta.web.security;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
public class SimpleFilter implements Filter{

    private static final Logger log = LoggerFactory.getLogger(SimpleFilter.class);
  
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		XSSRequestWrapper xss = new XSSRequestWrapper((HttpServletRequest)request);
    	System.out.println(xss.getParameter("name"));
		//chain.doFilter(request, response);	//필터링 땐 request 대신 xss
		
		chain.doFilter(xss, response);
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
	
}
