package com.CatsLover.controller;

import com.CatsLover.pojo.Testuser;
import com.CatsLover.service.TestUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestUserController {

    @Autowired
    TestUserService testUserService;

    @RequestMapping("/user/{userid}")
    @ResponseBody
    public Testuser getUserById(@PathVariable Integer userid) {
        Testuser user = testUserService.getUserById(userid);
        return user;
    }
}
