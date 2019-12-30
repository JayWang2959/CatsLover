package com.CatsLover.controller;

import com.CatsLover.CookieUtils.CookieUtils;
import com.CatsLover.pojo.CatsloverUser;
import com.CatsLover.service.CatsLoverLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;



@Controller()
public class CatsLoverLoginController {

    @Autowired
    CatsLoverLoginService catsLoverLoginService;
    private CatsloverUser user;

    @RequestMapping(value="/login")
    public String logincheck(HttpServletRequest request, HttpServletResponse response, String login_id, String login_password, Model model) throws UnsupportedEncodingException {
        System.out.println(catsLoverLoginService);
        try {
            user = catsLoverLoginService.loginByAccount(login_id, login_password);

        }catch (Exception e) {
            System.out.println(e);
            if (e instanceof IndexOutOfBoundsException) {
                model.addAttribute("error", "用户不存在！");
                e.printStackTrace();
                return "loginpage";
            }
            else{
                model.addAttribute("error", "抱歉，出现未知错误，请再试一次");
                e.printStackTrace();
                return "loginpage";
            }
        }

        if (user!=null){
            CookieUtils.addCookie(response, "USERID", user.getUserId(), 24*60*60);
            CookieUtils.addCookie(response, "USERPWD", user.getUserPassword(), 24*60*60);

            HttpSession session=request.getSession();
            session.setAttribute("USERID", user.getUserId());
            model.addAttribute("userName", user.getUserUsername());
            return "homeAfterLogin";
        }
        else{
            model.addAttribute("error", "密码错误！");
            return "loginpage";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request,HttpServletResponse response){
        //删除cookie
        CookieUtils.removeCookie(request, response, "USERID");
        CookieUtils.removeCookie(request, response, "USERPWD");
        return "homepage";
    }

    @RequestMapping(value="/register")
    public String submitUser(HttpServletRequest request, String register_id,String register_username, String register_password, Model model){
        try {
            catsLoverLoginService.submitInfo(register_id, register_username, register_password);
        }catch (Exception e) {
            if (e instanceof DuplicateKeyException) {
                e.printStackTrace();
                model.addAttribute("error", "用户id已存在！");
                return "registerpage";
            }
            else{
                e.printStackTrace();
                model.addAttribute("error", "抱歉，出现未知错误，请再试一次");
                return "registerpage";
            }
        }
//        这里找不到session有bug
//        HttpSession session=request.getSession();
//        session.setAttribute("USERID", user.getUserId());
        model.addAttribute("userName", register_username);
//        跳转到登录页面再登一次
        return "loginpage";
    }

    @RequestMapping("/autologin")
    public String autoLogin(HttpServletRequest request,HttpServletResponse response, Model model){
        System.out.println("进入了自动登录的Controller！");
        Cookie[] cookies = request.getCookies();
        if(cookies==null){
            return "homepage";
        }
        HttpSession session = request.getSession(false);
        String sessionId = session.getId();

        for(Cookie cookie:cookies){
            if (cookie.getName().equals("JSESSIONID")) {
                if(!cookie.getValue().equals(sessionId)){
                    return "homepage";
                }
            }
        }

        for (Cookie cookie2:cookies){
            if(cookie2.getName().equals("login_id")&&cookie2.getValue()!=null){
                String cookieUserId = cookie2.getValue();
                try{
                    user = catsLoverLoginService.getUserById(cookieUserId);
                    String realPassword = user.getUserPassword();
                    if (session.getAttribute("login_password").equals(realPassword)){
                        model.addAttribute("userName", user.getUserUsername());
                        return "homepage";
                    }else{
                        return "homepage";
                    }

                }catch (NullPointerException e){
                    return "homepage";
                }
            }
        }
        return "homepage";
    }
}



