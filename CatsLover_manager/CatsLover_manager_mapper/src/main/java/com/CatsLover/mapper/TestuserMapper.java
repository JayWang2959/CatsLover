package com.CatsLover.mapper;

import com.CatsLover.pojo.Testuser;
import com.CatsLover.pojo.TestuserExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TestuserMapper {
    long countByExample(TestuserExample example);

    int deleteByExample(TestuserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Testuser record);

    int insertSelective(Testuser record);

    List<Testuser> selectByExample(TestuserExample example);

    Testuser selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Testuser record, @Param("example") TestuserExample example);

    int updateByExample(@Param("record") Testuser record, @Param("example") TestuserExample example);

    int updateByPrimaryKeySelective(Testuser record);

    int updateByPrimaryKey(Testuser record);
}