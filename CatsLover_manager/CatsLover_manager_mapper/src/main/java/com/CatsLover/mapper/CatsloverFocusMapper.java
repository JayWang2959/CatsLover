package com.CatsLover.mapper;

import com.CatsLover.pojo.CatsloverFocus;
import com.CatsLover.pojo.CatsloverFocusExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CatsloverFocusMapper {
    long countByExample(CatsloverFocusExample example);

    int deleteByExample(CatsloverFocusExample example);

    int insert(CatsloverFocus record);

    int insertSelective(CatsloverFocus record);

    List<CatsloverFocus> selectByExample(CatsloverFocusExample example);

    List selectAllFocusIdByUserId(String userId);

    void deleteByUserId(String userId);

    int updateByExampleSelective(@Param("record") CatsloverFocus record, @Param("example") CatsloverFocusExample example);

    int updateByExample(@Param("record") CatsloverFocus record, @Param("example") CatsloverFocusExample example);
}
