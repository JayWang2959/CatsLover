package com.CatsLover.service.impl;

import com.CatsLover.mapper.CatsloverUserMapper;
import com.CatsLover.pojo.CatsloverUser;
import com.CatsLover.pojo.CatsloverUserExample;
import com.CatsLover.service.CatsLoverUserCenterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CatsLoverUserCenterServiceImpl implements CatsLoverUserCenterService {

    @Autowired
    CatsloverUserMapper catsloverUserMapper;

    @Override
    public void updateSignature(String userId, String signature) {
        CatsloverUserExample userExample = new CatsloverUserExample();
        CatsloverUserExample.Criteria criteria = userExample.createCriteria();
        criteria.andUserIdEqualTo(userId);

        CatsloverUser user = new CatsloverUser();
        user.setUserSignature(signature);

        catsloverUserMapper.updateByExampleSelective(user, userExample);
    }
}
