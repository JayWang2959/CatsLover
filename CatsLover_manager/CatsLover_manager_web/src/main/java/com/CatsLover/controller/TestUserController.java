package com.CatsLover.controller;

import com.CatsLover.pojo.Testuser;
import com.CatsLover.service.TestUserService;
import com.CatsLover.mapper.TestuserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;
//import utility.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;


@Controller()
public class TestUserController {

    @Autowired
    TestUserService testUserService;

    @RequestMapping("/user/{userid}")
    @ResponseBody
    public Testuser getUserById(@PathVariable Integer userid) {
        Testuser user = testUserService.getUserById(userid);
        return user;
    }

    @RequestMapping(value="try")
    public String logincheck(@RequestParam(required=false) Integer temp, String passw, Model model){
        System.out.println(temp);
        System.out.println("1");
        System.out.println(passw);
        System.out.println("2");
        Testuser user = testUserService.getUserById(temp);
        System.out.println("2.5");
        if(user == null)
            System.out.println("shit");
        System.out.println("3");
        System.out.println(user.getUsername());
        System.out.println(user.getPassword());
        if(passw.equals(user.getPassword())){
            System.out.println("true");
            model.addAttribute("loginuser", "欢迎"+user.getUsername()+"!");
            return "homepage";
        }
        else{
            System.out.println("false");
            model.addAttribute("error", "密码错误！");
            return "loginpage";
        }

    }

    @RequestMapping(value="submittry")
    public String submitUser(@RequestParam(required=false) Integer temp,String usern, String passw, Model model){
//        SqlSession session = null;
        System.out.println(temp);
        System.out.println("1");
//
        System.out.println(usern);
        System.out.println("2");
        System.out.println(passw);
        System.out.println("3");
        testUserService.submitInfo(temp, usern, passw);
//
//        Testuser a = new Testuser();
//        a.setId(temp);
//        a.setUsername(usern);
//        a.setPassword(passw);
//        TestuserMapper.insert(a);
//        try{
////            session = SqlSessionFactoryUtils.openSqlSession();
//            TestuserMapper testusermapper = session.getMapper(TestuserMapper.class);
//            testusermapper.insert(a);
//        }
//        finally {
//            {
//                if(session != null)
//                    session.close();
//            }
//        }
//
//        TestuserMapper testusermapper;
//        testusermapper.insert(a);
////        TestUserController c = new TestUserController();
////        TestuserMapper testusermapper = new TestuserMapper();
////        testusermapper.insert(a);
//
////        Testuser user = TestuserMapper.insert(a);
//
//
////        Testuser b = testUserService.insert(a);
////        TestuserMapper b = new TestuserMapper();
////        b.insert(a);
//        System.out.println("4");
        return null;
    }








}
