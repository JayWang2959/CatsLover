package com.CatsLover.service;

import com.CatsLover.pojo.CatsloverCat;
import com.CatsLover.pojo.CatsloverUser;

public interface CatsLoverVoteApply {

    CatsloverUser getUserById(String id);
    CatsloverCat getCatUserById(String id);
    CatsloverCat voteByAccount(String userId);

    void submitRegInfo(String cat_name, String user_id, String apply);
    void catRegList(String cat_name, String user_id, String apply , int vote);
    void voteApply(String cat_name, int vote);
}
