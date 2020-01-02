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
import java.util.ArrayList;
import java.util.List;

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

    @RequestMapping("initFocusUserCenterInfo")
    public String initFocusUserCenterInfo (String userId, Model model) {
            CatsloverUser user = catsLoverLoginService.getUserById(userId);

            model.addAttribute("USERID", user.getUserId());
            model.addAttribute("USERNAME", user.getUserUsername());
            model.addAttribute("USERSIGNATURE", user.getUserSignature());

        return "user_focusCenterInfo";
    }

    @RequestMapping("initUserFocusInfo")
    public String initUserFocusInfo(HttpServletRequest request, HttpServletResponse response, Model model){
        HttpSession session = request.getSession(false);
        if(null!=session){
            String userId = (String) session.getAttribute("USERID");
            System.out.println("userId"+userId);
            List focus = catsLoverUserCenterService.getFocusByUser(userId);
            model.addAttribute("focus", focus);
            System.out.println(focus);
            List<CatsloverUser> focus_info = new ArrayList<CatsloverUser>();
            CatsloverUser focus_info_temp = new CatsloverUser();
            for (int i = 0; i < focus.size(); i++){
                    focus_info_temp = catsLoverLoginService.getUserById((String) focus.get(i));
                    focus_info.add(focus_info_temp);
                    System.out.println("test>>"+focus_info_temp.getUserUsername());


            }
            model.addAttribute("focus_info", focus_info);
//            System.out.println(">>"+focus.getFocusId()+"<<");
        }
        return "userCenterFocus";
    }

    @RequestMapping("deleteUserFocusInfo")
    public String deleteUserFocusInfo(String userId){

        System.out.println(userId+"<<<");
        catsLoverUserCenterService.deleteFocus(userId);
        return "userCenterFocus";
    }

    @RequestMapping(value="alterUserInfo")
    public String alterUserInfo(HttpServletRequest request, HttpServletResponse response, Model model){
        String userUsername = request.getParameter("userUsername");
        String userSignature = request.getParameter("userSignature");
        System.out.println(userUsername+"??"+userSignature);
        HttpSession session = request.getSession(false);
        if(null!=session) {
            String userId = (String) session.getAttribute("USERID");
            catsLoverUserCenterService.updateUserInfo(userId,userUsername,userSignature);
            return "userCenterInfo";
        }
        return null;
    }


}
