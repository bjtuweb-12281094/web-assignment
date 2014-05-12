package filter;

import javax.servlet.FilterChain;
import javax.servlet.Filter;
import javax.servlet.FilterConfig;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import javax.servlet.ServletException;

/**
 * @author xmh
 * 
 */
public class EncodingFilter implements Filter {
	private String targetEncodin = "GBK";

	protected FilterConfig filterConfig;

	public void init(FilterConfig config) throws ServletException {
		this.filterConfig = config;
		if (config.getInitParameter("encoding") != null
				&& !config.getInitParameter("encoding").equals("")) {
			this.targetEncodin = config.getInitParameter("encoding");
		}
	}

	public void doFilter(ServletRequest servletRequest,
			ServletResponse servletResponse, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;

		request.setCharacterEncoding(this.targetEncodin);
		response.setContentType("text/html; charset=" + this.targetEncodin);

		System.out.println("Filter used: EncodingFilter.");
		System.out.println("\tRequest Encoding: " + this.targetEncodin);
		System.out.println("\tContentType: text/html; charset="
				+ this.targetEncodin);

		chain.doFilter(servletRequest, servletResponse);
	}

	public void destroy() {
		this.filterConfig = null;
	}
}