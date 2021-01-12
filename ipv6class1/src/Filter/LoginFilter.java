package Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		 request.setCharacterEncoding("UTF-8");
         response.setCharacterEncoding("UTF-8");
         response.setContentType("text/html;charset=UTF-8");
         HttpServletRequest req = (HttpServletRequest) request;  
         HttpServletResponse resp = (HttpServletResponse) response;  
         String path = req.getContextPath();  
         String basePath = req.getScheme()+"://"+req.getServerName()+":"+req.getServerPort()+path;  
         HttpSession session = req.getSession(true);  
         String username = (String) session.getAttribute("LoginName");  
         System.out.println("FilterDemo01执行前！！！");
         
         if(username==null||"".equals(username))
         {
       	  resp.setHeader("Cache-Control", "no-store");  
             resp.setDateHeader("Expires", 0);  
             resp.setHeader("Prama", "no-cache");  
             resp.sendRedirect(basePath+"/login.jsp");  
         }
         else
         chain.doFilter(request, response);  //让目标资源执行，放行
         System.out.println("FilterDemo01执行后！！！");
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

		System.out.println("----ipv6class过滤器初始化----");
	}

}
