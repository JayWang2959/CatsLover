package com.CatsLover.controller;


import com.CatsLover.pojo.CatsloverUser;
import com.CatsLover.service.CatsLoverLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller()
public class CatsLoverController {

    @Autowired
    CatsLoverLoginService catsLoverLoginService;

    @RequestMapping("/user/{userid}")
    @ResponseBody
    public CatsloverUser getUserById(@PathVariable String userid) {
        CatsloverUser user = catsLoverLoginService.getUserById(userid);
        return user;
    }

    @RequestMapping(value="login")
    public String logincheck(@RequestParam(required=false) String login_id, String login_password, Model model){
        System.out.println(login_id);
        System.out.println("1");
        System.out.println(login_password);
        System.out.println("2");
        CatsloverUser user = catsLoverLoginService.getUserById(login_id);
        System.out.println("2.5");
        if(user == null)
            System.out.println("shit");
        System.out.println("3");
        System.out.println(user.getUserUsername());
        System.out.println(user.getUserPassword());
        if(login_password.equals(user.getUserPassword())){
            System.out.println("true");
            model.addAttribute("loginuser", "欢迎"+user.getUserUsername()+"!");
            return "homepage";
        }
        else{
            System.out.println("false");
            model.addAttribute("error", "密码错误！");
            return "loginpage";
        }

    }

    @RequestMapping(value="register")
    public String submitUser(@RequestParam(required=false) String register_id,String register_username, String register_password, Model model){
        System.out.println(register_id);
        System.out.println("1");

        System.out.println(register_username);
        System.out.println("2");
        System.out.println(register_password);
        System.out.println("3");
        catsLoverLoginService.submitInfo(register_id, register_username, register_password);
        return null;
    }








}



