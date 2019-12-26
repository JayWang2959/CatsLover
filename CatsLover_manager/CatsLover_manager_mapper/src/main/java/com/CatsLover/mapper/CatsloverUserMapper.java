package com.CatsLover.mapper;

import java.util.List;

import com.CatsLover.pojo.CatsloverUser;
import com.CatsLover.pojo.CatsloverUserExample;
import org.apache.ibatis.annotations.Param;

public interface CatsloverUserMapper {
    long countByExample(CatsloverUserExample example);

    int deleteByExample(CatsloverUserExample example);

    int deleteByPrimaryKey(String userId);

    int insert(CatsloverUser record);

    int insertSelective(CatsloverUser record);

    List<CatsloverUser> selectByExample(CatsloverUserExample example);

    CatsloverUser selectByPrimaryKey(String userId);

    int updateByExampleSelective(@Param("record") CatsloverUser record, @Param("example") CatsloverUserExample example);

    int updateByExample(@Param("record") CatsloverUser record, @Param("example") CatsloverUserExample example);

    int updateByPrimaryKeySelective(CatsloverUser record);

    int updateByPrimaryKey(CatsloverUser record);
}