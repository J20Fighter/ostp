package com.peace.ostp.persistence;

import com.peace.ostp.domain.BasicSport;

public interface BasicSportMapper {
    int deleteByPrimaryKey(String sportid);

    int insert(BasicSport record);

    int insertSelective(BasicSport record);

    BasicSport selectByPrimaryKey(String sportid);

    int updateByPrimaryKeySelective(BasicSport record);

    int updateByPrimaryKey(BasicSport record);
}