package com.CatsLover.controller;


import com.CatsLover.pojo.CatsloverUser;
import com.CatsLover.service.CatsLoverLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;




@Controller()
public class CatsLoverController {

    @Autowired
    CatsLoverLoginService catsLoverLoginService;

    @RequestMapping(value="login")
    public String logincheck(@RequestParam(required=false) String login_id, String login_password, Model model){
        CatsloverUser user;

        try {
            user = catsLoverLoginService.getUserById(login_id);
        }catch (Exception e) {
//            System.out.println(e.getClass().getName());
            if (e instanceof IndexOutOfBoundsException) {
                model.addAttribute("error", "用户不存在！");
                return "loginpage";
            }
            else{
                model.addAttribute("error", "抱歉，出现未知错误，请再试一次");
                return "loginpage";
            }
        }

        if(login_password.equals(user.getUserPassword())){
            model.addAttribute("loginuser", "欢迎"+user.getUserUsername()+"!");
            return "homepage";
        }
        else{
            model.addAttribute("error", "密码错误！");
            return "loginpage";
        }

    }

    @RequestMapping(value="register")
    public String submitUser(@RequestParam(required=false) String register_id,String register_username, String register_password, Model model){
        try {
            catsLoverLoginService.submitInfo(register_id, register_username, register_password);
        }catch (Exception e) {
            if (e instanceof DuplicateKeyException) {
                e.printStackTrace();
                model.addAttribute("error", "用户id已存在！");
                return "registerpage";
            }
            else{
                model.addAttribute("error", "抱歉，出现未知错误，请再试一次");
                return "registerpage";
            }
        }
            model.addAttribute("loginuser", "欢迎"+register_username+"!");
        return "homepage";
    }








}



