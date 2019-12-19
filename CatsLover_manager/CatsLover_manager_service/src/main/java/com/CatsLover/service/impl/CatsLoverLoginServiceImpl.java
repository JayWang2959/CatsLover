package com.CatsLover.service.impl;

import com.CatsLover.mapper.CatsloverUserMapper;
import com.CatsLover.pojo.CatsloverUser;
import com.CatsLover.pojo.CatsloverUserExample;
import com.CatsLover.service.CatsLoverLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class CatsLoverLoginServiceImpl implements CatsLoverLoginService {
    @Autowired
    CatsloverUserMapper catsloverUserMapper;

    @Override
    public CatsloverUser getUserById(String id) {
        CatsloverUserExample catsloverUserExample = new CatsloverUserExample();
        CatsloverUserExample.Criteria criteria = catsloverUserExample.createCriteria();
        criteria.andUserIdEqualTo(id);

        List<CatsloverUser> userList = catsloverUserMapper.selectByExample(catsloverUserExample);

        if (userList!=null){
            return userList.get(0);
        }
        return null;
    }

    @Override
    public void submitInfo(String id, String username, String password) {
        CatsloverUser catsloverUser = new CatsloverUser();
        catsloverUser.setUserId(id);
        catsloverUser.setUserUsername(username);
        catsloverUser.setUserPassword(password);

        catsloverUserMapper.insert(catsloverUser);
    }

}
