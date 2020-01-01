package com.CatsLover.service.impl;

import com.CatsLover.mapper.CatsloverFocusMapper;
import com.CatsLover.mapper.CatsloverUserMapper;
import com.CatsLover.pojo.CatsloverFocus;
import com.CatsLover.pojo.CatsloverFocusExample;
import com.CatsLover.pojo.CatsloverUser;
import com.CatsLover.pojo.CatsloverUserExample;
import com.CatsLover.service.CatsLoverUserCenterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CatsLoverUserCenterServiceImpl implements CatsLoverUserCenterService {

    @Autowired
    CatsloverUserMapper catsloverUserMapper;
    @Autowired
    CatsloverFocusMapper  catsloverFocusMapper;

    @Override
    public void updateSignature(String userId, String signature) {
        CatsloverUserExample userExample = new CatsloverUserExample();
        CatsloverUserExample.Criteria criteria = userExample.createCriteria();
        criteria.andUserIdEqualTo(userId);

        CatsloverUser user = new CatsloverUser();
        user.setUserSignature(signature);

        catsloverUserMapper.updateByExampleSelective(user, userExample);
    }

    @Override
    public List getFocusByUser(String userId){
//        CatsloverFocusExample catsloverFocusExample = new CatsloverFocusExample();
//        CatsloverFocusExample.Criteria criteria = catsloverFocusExample.createCriteria();
//        criteria.andUserIdEqualTo(userId);

        List focus = catsloverFocusMapper.selectAllFocusIdByUserId(userId);

        if (focus!=null){
            return focus;
        }
        return null;
    }

}
