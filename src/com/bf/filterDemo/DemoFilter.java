package com.bf.filterDemo;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class DemoFilter implements Filter {

	private FilterConfig fc=null;
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		fc=null;
		System.out.println("destroy");
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request=(HttpServletRequest) arg0;
	
		fc.getInitParameter("param1");
		System.out.println("doFilter:"+request.getRequestURI()+"\t"+request.getServletPath());
		
		arg2.doFilter(arg0, arg1);
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		this.fc=arg0;
		System.out.println("init");

	}

}
