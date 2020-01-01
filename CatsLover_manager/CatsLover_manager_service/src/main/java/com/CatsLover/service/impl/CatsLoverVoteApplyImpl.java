package com.CatsLover.service.impl;

import com.CatsLover.mapper.CatsloverUserMapper;
import com.CatsLover.mapper.CatsloverCatMapper;
import com.CatsLover.pojo.CatsloverUser;
import com.CatsLover.pojo.CatsloverUserExample;
import com.CatsLover.pojo.CatsloverCat;
import com.CatsLover.pojo.CatsloverCatExample;
import com.CatsLover.service.CatsLoverLoginService;
import com.CatsLover.service.CatsLoverVoteApply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CatsLoverVoteApplyImpl implements CatsLoverVoteApply {

    @Autowired
    CatsloverCatMapper catsloverCatMapper;
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
    public CatsloverCat getCatUserById(String id) {
        CatsloverCatExample catsloverCatExample = new CatsloverCatExample();
        CatsloverCatExample.Criteria criteria = catsloverCatExample.createCriteria();
        criteria.andUserIdEqualTo(id);

        List<CatsloverCat> userList = catsloverCatMapper.selectByExample(catsloverCatExample);

        if (userList!=null){
            return userList.get(0);
        }
        return null;
    }

//    @Override
    public CatsloverCat voteByAccount(String CatuserId) {
        System.out.println("before get user");
        CatsloverCat user1 = getCatUserById(CatuserId);
//        System.out.println(user.getUserUsername());
        if (user1.equals(CatuserId)) {
            System.out.println("user_id ");
            System.out.println("Successful registration");
            return user1;
        }
        else
            System.out.println("error:The user does not exist");
            return null;
    }

    @Override
    public void submitRegInfo(String cat_name, String user_id, String apply) {
        CatsloverCat catsloverCat = new CatsloverCat();
        catsloverCat.setCatName(cat_name);
        catsloverCat.setUserId(user_id);
        catsloverCat.setApply(apply);

//        catsloverCat.setImage(image);
//        catsloverCat.setVote(vote);

        catsloverCat.setVote(0);

//插入报名猫表
        catsloverCatMapper.insert(catsloverCat);
    }

    @Override
    public void catRegList(String cat_name, String user_id, String apply , int vote) {//输出报名猫表
        CatsloverCatExample catsloverCatExample = new CatsloverCatExample();
        CatsloverCatExample.Criteria criteria = catsloverCatExample.createCriteria();
        criteria.andCatNameIsNotNull();

        List<CatsloverCat> catList = catsloverCatMapper.selectByExample(catsloverCatExample);



    }

    @Override
    public void voteApply(String cat_name, int vote) {//票数+1\
        vote+=1;
        CatsloverCat catsloverCat = new CatsloverCat();
        catsloverCat.setCatName(cat_name);
        catsloverCat.setVote(vote);
        catsloverCatMapper.updateByPrimaryKey(catsloverCat);

    }

}

