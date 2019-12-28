package com.CatsLover.filter;

import com.CatsLover.CookieUtils.CookieUtils;
import com.CatsLover.pojo.CatsloverUser;
import com.CatsLover.service.CatsLoverLoginService;
import com.CatsLover.service.impl.CatsLoverLoginServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@Controller()
public class AutoLoginFilter implements Filter {

    @Autowired
    CatsLoverLoginService catsLoverLoginService;
    private CatsloverUser user;

    public void destroy() {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        // 判断当前用户是否已登陆
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        if (httpServletRequest.getSession().getAttribute("USER") == null) {
            System.out.println("haven't signed in");
            // 若未登录，判断对应cookie是否存在
            String cookieId = CookieUtils.getCookieValue(httpServletRequest, "USERID");
            String cookiePwd = CookieUtils.getCookieValue(httpServletRequest, "USERPWD");
            System.out.println("CookieId"+ cookieId);
            System.out.println("CookiePwd"+ cookiePwd);
            if (cookieId != null && cookiePwd != null) {
                System.out.println("find cookies");
                // 如果找到了，自动登录cookie
                
                System.out.println(catsLoverLoginService);
                try {
                    user = catsLoverLoginService.loginByAccount(cookieId, cookiePwd);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if(user!=null){
                    HttpSession session=httpServletRequest.getSession();
                    session.setAttribute("USER", user);
                    System.out.println("AutoLoginFilter");
                }
            }
        }
        filterChain.doFilter(servletRequest, servletResponse);
    }

    public void init(FilterConfig filterConfig) throws ServletException {

    }
}
