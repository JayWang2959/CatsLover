package com.CatsLover.service;

import com.CatsLover.pojo.CatsloverFocus;

import java.util.List;

public interface CatsLoverUserCenterService {

    void updateSignature(String userId, String signature);
    public List getFocusByUser(String userId);
}
