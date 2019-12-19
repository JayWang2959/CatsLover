package com.CatsLover.service;

import com.CatsLover.pojo.Testuser;

public interface TestUserService {

    Testuser getUserById(Integer id);
    Testuser getPasswordById(Integer id);
    void submitInfo(Integer id, String username, String password);
}
