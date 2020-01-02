package com.CatsLover.mapper;

import com.CatsLover.pojo.CatsloverUser;
import com.CatsLover.pojo.CatsloverUserExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CatsloverUserMapper {
    long countByExample(CatsloverUserExample example);

    int deleteByExample(CatsloverUserExample example);

    int deleteByPrimaryKey(String userId);

    int insert(CatsloverUser record);

    int insertSelective(CatsloverUser record);

    List<CatsloverUser> selectByExample(CatsloverUserExample example);

    CatsloverUser selectByPrimaryKey(String userId);

    void updateUserInfo(@Param("userId") String userId, @Param("userUsername") String userUsername, @Param("userSignature") String userSignature);

    int updateByExampleSelective(@Param("record") CatsloverUser record, @Param("example") CatsloverUserExample example);

    int updateByExample(@Param("record") CatsloverUser record, @Param("example") CatsloverUserExample example);

    int updateByPrimaryKeySelective(CatsloverUser record);

    int updateByPrimaryKey(CatsloverUser record);
}
