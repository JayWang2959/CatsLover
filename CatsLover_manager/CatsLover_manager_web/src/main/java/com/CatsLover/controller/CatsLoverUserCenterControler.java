package com.CatsLover.controller;

import com.CatsLover.pojo.CatsloverUser;
import com.CatsLover.service.CatsLoverLoginService;
import com.CatsLover.service.CatsLoverUserCenterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.time.MonthDay;

@Controller
public class CatsLoverUserCenterControler {

    @Autowired
    CatsLoverUserCenterService catsLoverUserCenterService;
    @Autowired
    CatsLoverLoginService catsLoverLoginService;

    @RequestMapping("/userCenter")
    public String userCenterView (HttpServletRequest request, HttpServletResponse response, Model model) {
        HttpSession session = request.getSession(false);

        if (null!=session) {
            String userId = (String) session.getAttribute("USERID");
            CatsloverUser user = catsLoverLoginService.getUserById(userId);

            model.addAttribute("userId", user.getUserId());
            model.addAttribute("userName", user.getUserUsername());
            model.addAttribute("userSignature", user.getUserSignature());
            System.out.println(user.getUserUsername());
            System.out.println(user.getUserSignature());
            System.out.println(user.getUserPassword());
        }

        return "userCenter";
    }

    @RequestMapping("/setSignature")
    public String setSignature (HttpServletRequest request, HttpServletResponse response, Model model, String userSignature) {
        HttpSession session = request.getSession(false);

        if (null != session) {
            String userId = (String) session.getAttribute("USERID");

            catsLoverUserCenterService.updateSignature(userId, userSignature);
            model.addAttribute("userSignature", userSignature);
            System.out.println(" Signature updated");
        }
        return "userCenter";
    }

    @RequestMapping("initUserCenterInfo")
    public String initUserCenterInfo (HttpServletRequest request, HttpServletResponse response, Model model) {
        HttpSession session = request.getSession(false);

        if (null!=session) {
            String userId = (String) session.getAttribute("USERID");
            CatsloverUser user = catsLoverLoginService.getUserById(userId);

            model.addAttribute("USERID", user.getUserId());
            model.addAttribute("USERNAME", user.getUserUsername());
            model.addAttribute("USERSIGNATURE", user.getUserSignature());
        }

        return "userCenterInfo";
    }
}