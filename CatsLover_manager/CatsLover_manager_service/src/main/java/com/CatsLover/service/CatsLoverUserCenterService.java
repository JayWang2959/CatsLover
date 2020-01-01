package com.CatsLover.service;

import java.util.List;

public interface CatsLoverUserCenterService {

    void updateSignature(String userId, String signature);
    public List getFocusByUser(String userId);
    void deleteFocus(String userId);
}
