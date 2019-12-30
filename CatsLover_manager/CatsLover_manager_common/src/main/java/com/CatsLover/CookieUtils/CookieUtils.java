package com.CatsLover.CookieUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieUtils {
    /**
     * 添加cookie
     */
    public static boolean addCookie(HttpServletResponse response, String name, String value, int maxAge) {
        Cookie cookie = new Cookie(name, value);

        if (maxAge < 0) {
            maxAge = Integer.MAX_VALUE;
        }
        cookie.setMaxAge(maxAge);
        cookie.setPath("/");

        response.addCookie(cookie);
        return true;
    }

    /**
     * 删除cookie
     */
    public static boolean removeCookie (HttpServletRequest request, HttpServletResponse response, String name) {
        Cookie[] cookies = request.getCookies();
        if (null != cookies) {
            for (Cookie cookie :cookies) {
                if (name.equals(cookie.getName())) {
                    cookie.setValue(null);
                    cookie.setMaxAge(0);
                    cookie.setPath("/");
                    response.addCookie(cookie);
                    return true;
                }
            }
        }
        return false;
    }

    /**
     *  根据Cookie名称得到Cookie的值，若无返回null
     */
    public static String getCookieValue(HttpServletRequest request, String name) {
        Cookie[] cookies = request.getCookies();

        if (null != cookies) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(name)) {
                    return cookie.getValue();
                }
            }
        }
        return null;
    }
}
