package com.peace.ostp.persistence;

import com.peace.ostp.domain.InfoSecondLevelType;

public interface InfoSecondLevelTypeMapper {
    int deleteByPrimaryKey(String secondlevelinfotypeid);

    int insert(InfoSecondLevelType record);

    int insertSelective(InfoSecondLevelType record);

    InfoSecondLevelType selectByPrimaryKey(String secondlevelinfotypeid);

    int updateByPrimaryKeySelective(InfoSecondLevelType record);

    int updateByPrimaryKey(InfoSecondLevelType record);
}