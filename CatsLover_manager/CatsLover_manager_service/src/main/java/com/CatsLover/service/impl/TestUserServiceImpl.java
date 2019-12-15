package com.CatsLover.service.impl;

import com.CatsLover.mapper.TestuserMapper;
import com.CatsLover.pojo.Testuser;
import com.CatsLover.pojo.TestuserExample;

import com.CatsLover.service.TestUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestUserServiceImpl implements TestUserService {

    @Autowired
    TestuserMapper testuserMapper;

    @Override
    public Testuser getUserById(Integer id) {
        TestuserExample testuserExample = new TestuserExample();
        TestuserExample.Criteria criteria = testuserExample.createCriteria();
        criteria.andIdEqualTo(id);

        List<Testuser> userList = testuserMapper.selectByExample(testuserExample);

        if (userList!=null){
            return userList.get(0);
        }
        return null;
    }
}
