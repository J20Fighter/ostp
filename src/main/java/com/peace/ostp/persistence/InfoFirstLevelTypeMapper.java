package com.peace.ostp.persistence;

import com.peace.ostp.domain.InfoFirstLevelType;

public interface InfoFirstLevelTypeMapper {
    int deleteByPrimaryKey(String firstlevelinfotypeid);

    int insert(InfoFirstLevelType record);

    int insertSelective(InfoFirstLevelType record);

    InfoFirstLevelType selectByPrimaryKey(String firstlevelinfotypeid);

    int updateByPrimaryKeySelective(InfoFirstLevelType record);

    int updateByPrimaryKey(InfoFirstLevelType record);
}