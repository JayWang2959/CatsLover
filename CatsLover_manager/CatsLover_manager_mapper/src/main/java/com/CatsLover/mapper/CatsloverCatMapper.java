package com.CatsLover.mapper;

import com.CatsLover.pojo.CatsloverCat;
import com.CatsLover.pojo.CatsloverCatExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CatsloverCatMapper {
    long countByExample(CatsloverCatExample example);

    int deleteByExample(CatsloverCatExample example);

    int deleteByPrimaryKey(String catName);

    int insert(CatsloverCat record);

    int insertSelective(CatsloverCat record);

    List<CatsloverCat> selectByExample(CatsloverCatExample example);

    CatsloverCat selectByPrimaryKey(String catName);

    int updateByExampleSelective(@Param("record") CatsloverCat record, @Param("example") CatsloverCatExample example);

    int updateByExample(@Param("record") CatsloverCat record, @Param("example") CatsloverCatExample example);

    int updateByPrimaryKeySelective(CatsloverCat record);

    int updateByPrimaryKey(CatsloverCat record);
}