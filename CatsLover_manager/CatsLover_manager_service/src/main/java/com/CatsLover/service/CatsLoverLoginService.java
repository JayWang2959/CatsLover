package com.CatsLover.service;

import com.CatsLover.pojo.CatsloverUser;

public interface CatsLoverLoginService {

    CatsloverUser getUserById(String id);
    CatsloverUser loginByAccount(String userId, String userPwd);
    void submitInfo(String id, String username, String password);
}
